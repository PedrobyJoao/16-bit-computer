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
	fileName := strings.TrimSuffix(filepath.Base(vmPath), filepath.Ext(vmPath))
	fileInfo, err := os.Stat(vmPath)
	if err != nil {
		log.Fatalf("Couldn't get file info, Error: %v", err)
	}

	var outputPath string
	if fileInfo.IsDir() {
		outputPath = filepath.Join(
			vmPath, fmt.Sprintf("%s.asm", fileName))
		cw, err := code_writer.NewCodeWriter(outputPath)
		if err != nil {
			log.Fatalf("Couldn't instantiate a new Code Writer, Error: %v", err)
		}

		// Write the bootstrap code
		cw.WriteInit()
		cw.WriteJumpLine()

		// iterate through each file inside dir with extension '.vm'
		err = filepath.Walk(vmPath, func(path string, info os.FileInfo, err error) error {
			if strings.HasSuffix(path, ".vm") {
				err := translateFile(path, cw)
				if err != nil {
					return fmt.Errorf("Couldn't translate file, Error: %v", err)
				}
			}
			return nil
		})

		if err != nil {
			log.Fatalf("Couldn't do directory translation of VM files, Error: %v", err)
		}

		cw.Close()
	} else {
		// TODO: handle single .vm file
		outputPath = filepath.Join(
			filepath.Dir(vmPath), fmt.Sprintf("%s.asm", fileName))

		cw, err := code_writer.NewCodeWriter(outputPath)
		if err != nil {
			log.Fatalf("Couldn't instantiate a new Code Writer, Error: %v", err)
		}

		err = translateFile(vmPath, cw)
		if err != nil {
			log.Fatalf("Couldn't translate file, Error: %v", err)
		}

	}

}

func translateFile(vmFilePath string, cw *code_writer.CodeWriter) error {
	p, err := parser.NewParser(vmFilePath)
	if err != nil {
		return fmt.Errorf("Couldn't instantiate new parser, Error: %v", err)
	}
	cw.SetCurrentVMFile(vmFilePath)
	for {
		hasCommand, err := p.Advance()
		if err != nil {
			return fmt.Errorf("Error advancing parser, Error: %v", err)
		}
		if p.Eof {
			break
		}
		if !hasCommand {
			continue
		}
		arg1, _ := p.GetArg1()
		arg2, _ := p.GetArg2()

		cw.CommentCommand(p.CurrentCmd)

		if p.GetCommandType() == parser.C_POP ||
			p.GetCommandType() == parser.C_PUSH {
			arg2, err := p.GetArg2()
			if err != nil {
				return fmt.Errorf("%v", err)
			}
			cw.WritePushPop(p.GetCommandType(), arg1, arg2)
		} else if p.GetCommandType() == parser.C_ARITHMETIC {
			cw.WriteArithmetic(arg1)
		} else if p.GetCommandType() == parser.C_LABEL {
			cw.WriteLabel(arg1)
		} else if p.GetCommandType() == parser.C_GOTO {
			cw.WriteGoto(arg1, false)
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
		cw.WriteDebugCommand()
	}
	return nil
}
