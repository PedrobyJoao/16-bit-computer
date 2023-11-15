package code_writer

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/PedrobyJoao/16-bit-computer/vm/parser"
)

type CodeWriter struct {
	file        *os.File
	outFileName string
	stack       *Stack
	SP          int
}

// Constructor: Opens the output file/stream and gets ready to write into it.
func NewCodeWriter(outputPath string) (*CodeWriter, error) {
	f, err := os.Create(outputPath)
	if err != nil {
		return nil, err
	}

	// removing .asm and getting pure file name without extension
	base := filepath.Base(outputPath)
	fileName := strings.TrimSuffix(base, filepath.Ext(base))

	s := NewStack()
	return &CodeWriter{
		file:        f,
		outFileName: fileName,
		stack:       s,
		SP:          256,
	}, nil
}

// setFileName: Informs the code writer that the translation of a new VM file is started.
func (cw *CodeWriter) setFileName(fileName string) {
	// Implementation details might include resetting internal state,
	// writing a comment to the output file with the new filename, etc.
	// For now, just a placeholder comment:
	cw.file.WriteString("// Translating " + fileName + "\n")
}

func (cw *CodeWriter) CommentCommand(cmd string) {
	cw.file.WriteString("//" + cmd + "\n")
}

// WriteJumpLine jumps one line
func (cw *CodeWriter) WriteJumpLine() {
	cw.file.WriteString("\n")
}

// WriteLabel : Writes the assembly code that is the translation of the given label command.
func (cw *CodeWriter) WriteLabel(label string) {
	cw.file.WriteString("(" + label + ")" + "\n")
}

// WriteGoto: Writes the assembly code that is the translation of the given goto command.
func (cw *CodeWriter) WriteGoto(label string) {
	cw.file.WriteString("@" + label + "\n")
	cw.file.WriteString("0;JMP" + "\n")
}

// WriteIf: Writes the assembly code that is the translation of the given if-goto command.
func (cw *CodeWriter) WriteIf(label string) {
	// get stack's top addr and decrease SP by 1
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("M=M-1" + "\n")
	cw.file.WriteString("A=M" + "\n")

	// Get top's value, set it to 0
	cw.file.WriteString("D=M" + "\n")
	cw.file.WriteString("M=0" + "\n")

	// If D != 0, jumps to label
	cw.file.WriteString("@" + label + "\n")
	cw.file.WriteString("D;JNE" + "\n")

}

// WriteArithmetic: Writes the assembly code that is the translation of the given arithmetic command.
func (cw *CodeWriter) WriteArithmetic(command string) {
	if command == "add" || command == "sub" ||
		command == "and" || command == "or" {
		// get current stack pointer (points to stack memory location)
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("A=M" + "\n")

		// Subtract 1 because the Stack Pointer doesn't point to the top but to top + 1
		cw.file.WriteString("A=A-1" + "\n")

		// Get top's value and set it to 0 after
		cw.file.WriteString("D=M" + "\n")
		cw.file.WriteString("M=0" + "\n")

		// Get stack pointer and also decrease it by one as we'll remove just one item from stac
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("M=M-1" + "\n")
		cw.file.WriteString("A=M" + "\n")
		cw.file.WriteString("A=A-1" + "\n")

		if command == "add" {
			cw.file.WriteString("D=D+M" + "\n")
		} else if command == "sub" {
			cw.file.WriteString("D=M-D" + "\n")
		} else if command == "and" {
			cw.file.WriteString("D=D&M" + "\n")
		} else if command == "or" {
			cw.file.WriteString("D=D|M" + "\n")
		}

		// Write to stack
		cw.file.WriteString("M=D" + "\n")
	} else if command == "neg" || command == "not" {
		// get current stack pointer (points to stack memory location)
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("A=M" + "\n")

		// Subtract 1 because the Stack Pointer doesn't point to the top but to top + 1
		cw.file.WriteString("A=A-1" + "\n")

		if command == "neg" {
			cw.file.WriteString("M=-M" + "\n")
		} else if command == "not" {
			cw.file.WriteString("M=!M" + "\n")
		}
	}
}

// WritePushPop: Writes the assembly code that is the translation of the given command.
func (cw *CodeWriter) WritePushPop(command parser.CommandType, segment string, index int) {
	// example: push constant 0
	// (Adding to the stack memory segment)
	// @0
	// D = A
	// @SP
	// A = M
	// M = D
	// (Adding +1 to SP)
	// @SP
	// M = M + 1
	if command == parser.C_PUSH {
		if segment == "constant" {
			cw.file.WriteString(fmt.Sprintf("@%d\n", index))
			cw.file.WriteString("D=A" + "\n")
		} else if segment == "pointer" {
			if index == 0 {
				cw.file.WriteString("@THIS" + "\n")
			} else if index == 1 {
				cw.file.WriteString("@THAT" + "\n")
			}
			cw.file.WriteString("D=M" + "\n")
		} else if segment == "temp" {
			// get the index and assign to D
			cw.file.WriteString(fmt.Sprintf("@%d\n", index))
			cw.file.WriteString("D=A" + "\n")

			// Temp always starts at RAM[5]
			cw.file.WriteString("@R5" + "\n")

			// index + 5, and write M value to D
			cw.file.WriteString("A=D+A" + "\n")
			cw.file.WriteString("D=M" + "\n")
		} else if segment == "static" {
			// push static 3
			// @Xxx.3 (Xxx being the filename)
			// D=M
			cw.file.WriteString(fmt.Sprintf("@%v.%d\n", cw.outFileName, index))
			cw.file.WriteString("D=M" + "\n")
		} else {
			// get the index and assign to D
			cw.file.WriteString(fmt.Sprintf("@%d\n", index))
			cw.file.WriteString("D=A" + "\n")

			if segment == "local" {
				cw.file.WriteString("@LCL" + "\n")
			} else if segment == "argument" {
				cw.file.WriteString("@ARG" + "\n")
			} else if segment == "this" {
				cw.file.WriteString("@THIS" + "\n")
			} else if segment == "that" {
				cw.file.WriteString("@THAT" + "\n")
			}

			// get the segment pointer + index, and its value
			cw.file.WriteString("A=M+D" + "\n")
			cw.file.WriteString("D=M" + "\n")
		}
		// Write to stack the value of D
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("A=M" + "\n")
		cw.file.WriteString("M=D" + "\n")
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("M=M+1" + "\n")
	} else if command == parser.C_POP {
		// R13 (index), R14 (value to pop), R15 (index + segment base)
		// pop local 3

		// STACK PART ------------------------------
		// get current stack pointer (points to stack memory location)
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("A=M" + "\n")

		// Subtract 1 because the Stack Pointer doesn't point to the top but to top + 1
		cw.file.WriteString("A=A-1" + "\n")

		// Get top's value and set it to 0 after
		cw.file.WriteString("D=M" + "\n")
		cw.file.WriteString("M=0" + "\n")

		// Decrease SP pointer by 1 as an item is being popped
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("M=M-1" + "\n")

		// Write value to R14
		cw.file.WriteString("@R14" + "\n")
		cw.file.WriteString("M=D" + "\n")

		// SEGMENT PART ------------------------------
		// D -> popped value

		if segment == "static" {
			cw.file.WriteString(fmt.Sprintf("@%v.%d\n", cw.outFileName, index))
			cw.file.WriteString("M=D" + "\n")
		} else if segment == "pointer" {
			if index == 0 {
				cw.file.WriteString("@THIS" + "\n")
			} else if index == 1 {
				cw.file.WriteString("@THAT" + "\n")
			}
			cw.file.WriteString("M=D" + "\n")
		} else {
			// get the index and assign to R13
			cw.file.WriteString(fmt.Sprintf("@%d\n", index))
			cw.file.WriteString("D=A" + "\n")
			cw.file.WriteString("@R13" + "\n")
			cw.file.WriteString("M=D" + "\n")

			// D -> index

			if segment == "temp" {
				// Temp always starts at RAM[5]
				cw.file.WriteString("@R5" + "\n")

				// index + 5, and write to M value to D
				cw.file.WriteString("A=D+A" + "\n")
				cw.file.WriteString("D=A" + "\n")
				cw.file.WriteString("@R15" + "\n")
				cw.file.WriteString("M=D" + "\n")

				// Based on R15 (index + segment base), write to memory[index + segment]
				cw.file.WriteString("@R14" + "\n")
				cw.file.WriteString("D=M" + "\n")
				cw.file.WriteString("@R15" + "\n")
				cw.file.WriteString("A=M" + "\n")
				cw.file.WriteString("M=D" + "\n")
				return
			}

			if segment == "local" {
				cw.file.WriteString("@LCL" + "\n")
			} else if segment == "argument" {
				cw.file.WriteString("@ARG" + "\n")
			} else if segment == "this" {
				cw.file.WriteString("@THIS" + "\n")
			} else if segment == "that" {
				cw.file.WriteString("@THAT" + "\n")
			}

			// Write index + segment base to R15
			cw.file.WriteString("D=M" + "\n")
			cw.file.WriteString("@R13" + "\n")
			cw.file.WriteString("D=D+M" + "\n")
			cw.file.WriteString("@R15" + "\n")
			cw.file.WriteString("M=D" + "\n")

			// Based on R15 (index + segment base), write to memory[index + segment]

			cw.file.WriteString("@R14" + "\n")
			cw.file.WriteString("D=M" + "\n")
			cw.file.WriteString("@R15" + "\n")
			cw.file.WriteString("A=M" + "\n")
			cw.file.WriteString("M=D" + "\n")
		}
	}
}

// close: Closes the output file.
func (cw *CodeWriter) close() {
	cw.file.Close()
}
