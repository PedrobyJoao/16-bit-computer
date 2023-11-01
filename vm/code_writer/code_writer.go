package code_writer

import (
	"fmt"
	"os"

	"github.com/PedrobyJoao/16-bit-computer/vm/parser"
)

type CodeWriter struct {
	file  *os.File
	stack *Stack
	SP    int
}

// Constructor: Opens the output file/stream and gets ready to write into it.
func NewCodeWriter(outputPath string) (*CodeWriter, error) {
	f, err := os.Create(outputPath)
	if err != nil {
		return nil, err
	}
	s := NewStack()
	return &CodeWriter{
		file:  f,
		stack: s,
		SP:    256,
	}, nil
}

// setFileName: Informs the code writer that the translation of a new VM file is started.
func (cw *CodeWriter) setFileName(fileName string) {
	// Implementation details might include resetting internal state,
	// writing a comment to the output file with the new filename, etc.
	// For now, just a placeholder comment:
	cw.file.WriteString("// Translating " + fileName + "\n")
}

// WriteArithmetic: Writes the assembly code that is the translation of the given arithmetic command.
func (cw *CodeWriter) WriteArithmetic(command string) {
	if command == "add" {
		// example: stack[1, 3], 3 being the top
		// @SP
		// A=M
		// A=A-1
		// D=M
		// M=0
		// @SP
		// M=M-1
		// A=M
		// A=A-1
		// D=D+M
		// M=D
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("A=M" + "\n")
		cw.file.WriteString("A=A-1" + "\n")
		cw.file.WriteString("D=M" + "\n")
		cw.file.WriteString("M=0" + "\n")
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("M=M-1" + "\n")
		cw.file.WriteString("A=M" + "\n")
		cw.file.WriteString("A=A-1" + "\n")
		cw.file.WriteString("D=D+M" + "\n")
		cw.file.WriteString("M=D" + "\n")
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
			cw.file.WriteString("@SP" + "\n")
			cw.file.WriteString("A=M" + "\n")
			cw.file.WriteString("M=D" + "\n")
			cw.file.WriteString("@SP" + "\n")
			cw.file.WriteString("M=M+1" + "\n")
		}
	}
}

// close: Closes the output file.
func (cw *CodeWriter) close() {
	cw.file.Close()
}
