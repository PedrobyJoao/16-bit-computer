package main

import (
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"

	"github.com/PedrobyJoao/nand-to-tetris-projects/06/hack_assembler/code"
	"github.com/PedrobyJoao/nand-to-tetris-projects/06/hack_assembler/parser"
	"github.com/PedrobyJoao/nand-to-tetris-projects/06/hack_assembler/symbol_table"
)

func main() {
	// Check if the file name is provided
	if len(os.Args) < 2 {
		log.Fatalf("Usage: %s <filename>", os.Args[0])
	}

	// Get the file name from the first command-line argument
	filename := os.Args[1]

	// Validate if the filename has the .asm extension
	if !strings.HasSuffix(filename, ".asm") {
		log.Fatalf("The provided file must have a .asm extension")
	}

	// insertin labels's symbols into symbol table
	symbolTable := symbol_table.NewSymbolTable()
	resolvingLabels(symbolTable, filename)
	log.Print("\n\nFirst iteration ---------------------\n\n")

	// second iteration through parse and translate the commands
	p, err := parser.NewParser(filename)
	if err != nil {
		log.Fatalf("Failed to instantiate Parser, Error: %v", err)
	}
	defer p.CloseAsmFile()

	c := code.NewCode()
	var binaryCmds []string
	for {
		hasCommand, err := p.Advance()
		if err != nil {
			log.Fatal(err)
		}
		if p.Eof {
			break
		}
		if !hasCommand {
			continue
		}
		if p.GetCommandType() == parser.CmdA {
			symbolOrValue, err := p.GetSymbol()
			if err != nil {
				log.Fatal(err)
			}

			_, err = strconv.Atoi(symbolOrValue)
			isNumber := err == nil

			if !isNumber {
				if _, ok := symbolTable.Table[symbolOrValue]; !ok {
					symbolTable.AddNewSymbolEntry(symbolOrValue)
				}
				symbolAddr := strconv.Itoa(symbolTable.Table[symbolOrValue])
				log.Print(symbolAddr)
				symbolOrValue = symbolAddr
			}

			log.Print(symbolOrValue)
			binaryNum, err := numStrToBinary(symbolOrValue)
			if err != nil {
				log.Fatal(err)
			}

			binaryCmds = append(binaryCmds, "0"+binaryNum)
		} else if p.GetCommandType() == parser.CmdC {
			// parse and codify comp mnemonic to comp bits
			compMnemonic, err := p.GetCompMnemonic()
			if err != nil {
				log.Fatal(err)
			}
			compBits := c.CodifyCompBits(compMnemonic)

			// parse and codify dest mnemonic to dest bits
			destMnemonic, err := p.GetDestMnemonic()
			if err != nil {
				log.Fatal(err)
			}
			destBits := c.CodifyDestBits(destMnemonic)

			// parse and codify jump mnemonic to jump bits
			jumpMnemonic, err := p.GetJumpMnemonic()
			if err != nil {
				log.Fatal(err)
			}
			jumpBits := c.CodifyJumpBits(jumpMnemonic)

			binaryCmds = append(binaryCmds,
				"111"+compBits+destBits+jumpBits)
		} else {
			// TODO for Label lines
		}
	}

	// Create the output filename
	outFilename := strings.TrimSuffix(filename, ".asm") + ".hack"

	// Create the output file
	outFile, err := os.Create(outFilename)
	if err != nil {
		log.Fatalf("Failed to create the output file: %v", err)
	}
	defer outFile.Close()

	// Write each string from binaryCmds slice to the file
	for _, cmd := range binaryCmds {
		_, err := outFile.WriteString(cmd + "\n")
		if err != nil {
			log.Fatalf("Failed to write to the output file: %v", err)
		}
	}

	// Optionally: log the success message
	log.Printf("Machine code written to: %s", outFilename)
}

func resolvingLabels(symbolTable *symbol_table.SymbolTable, filename string) {
	p, err := parser.NewParser(filename)
	if err != nil {
		log.Fatalf("Failed to instantiate Parser, Error: %v", err)
	}
	defer p.CloseAsmFile()

	// Resolving labels
	validCmdLines := -1
	for {
		hasCommand, err := p.Advance()
		if err != nil {
			log.Fatal(err)
		}
		if p.Eof {
			break
		}
		if !hasCommand {
			continue
		}

		if p.GetCommandType() == parser.CmdL {
			symbolOrValue, err := p.GetSymbol()
			if err != nil {
				log.Fatal(err)
			}
			log.Print(symbolOrValue, validCmdLines)
			symbolTable.AddLabelSymbolEntry(symbolOrValue, validCmdLines+1)
			log.Print("Do NOT Count line")
		} else {
			validCmdLines += 1
			log.Print("Count line", validCmdLines)
		}
	}
}

// numStrToBinary takes a string representation of a number and returns its 15-bit binary representation as a string.
func numStrToBinary(numStr string) (string, error) {
	// Convert the string to an integer
	num, err := strconv.Atoi(numStr)
	if err != nil {
		return "", fmt.Errorf("failed to convert string to integer: %v", err)
	}

	// Convert the integer to binary and pad with zeros to make it 15 bits long
	binStr := fmt.Sprintf("%b", num)
	paddedBinStr := fmt.Sprintf("%015s", binStr)

	return paddedBinStr, nil
}
