package main

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
	"strings"

	"github.com/PedrobyJoao/16-bit-computer/vm/code_writer"
	"github.com/PedrobyJoao/16-bit-computer/vm/parser"
)

func main() {
	// Check if the file name is provided
	if len(os.Args) < 2 {
		log.Fatal("Usage: go run main <file/directory path>")
	}

	// Get the file name from the first command-line argument
	vmPath := os.Args[1]

	// Check if directory, if true, make list of files .vm

	// removing .vm and getting pure file name without extension
	base := filepath.Base(vmPath)
	fileName := strings.TrimSuffix(base, filepath.Ext(base))

	outputPath := filepath.Join(
		filepath.Dir(vmPath), fmt.Sprintf("%s.asm", fileName))

	cw, err := code_writer.NewCodeWriter(outputPath)
	if err != nil {
		log.Fatalf("Couldn't instantiate a new Code Writer, Error: %v", err)
	}

	p, err := parser.NewParser(vmPath)
	if err != nil {
		log.Fatalf("Couldn't instantiate new parser, Error: %v", err)
	}
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
		arg1, err := p.GetArg1()
		if err != nil {
			log.Printf("Command doesn't have arg1: %v", err)
		}

		arg2, err := p.GetArg2()
		if err != nil {
			log.Printf("Command doesn't have arg2: %v", err)
		}

		cw.CommentCommand(p.CurrentCmd)

		if p.GetCommandType() == parser.C_POP ||
			p.GetCommandType() == parser.C_PUSH {
			arg2, err := p.GetArg2()
			if err != nil {
				log.Fatalf("%v", err)
			}
			cw.WritePushPop(p.GetCommandType(), arg1, arg2)
		} else if p.GetCommandType() == parser.C_ARITHMETIC {
			cw.WriteArithmetic(arg1)
		} else if p.GetCommandType() == parser.C_LABEL {
			cw.WriteLabel(arg1)
		} else if p.GetCommandType() == parser.C_GOTO {
			cw.WriteGoto(arg1)
		} else if p.GetCommandType() == parser.C_IF {
			cw.WriteIf(arg1)
		} else if p.GetCommandType() == parser.C_FUNCTION {
			cw.WriteFunction(arg1, arg2)
		} else if p.GetCommandType() == parser.C_RETURN {
			cw.WriteReturn()
		} else if p.GetCommandType() == parser.C_CALL {
			cw.WriteCall(arg1, arg2)
		}

		cw.WriteJumpLine()
	}
}
