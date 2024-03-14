package code_writer

import (
	"fmt"

	"github.com/PedrobyJoao/16-bit-computer/vm/parser"
)

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
			cw.file.WriteString(fmt.Sprintf("@%v.%d\n", cw.currentVMFile, index))
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
		cw.writePushDregister()
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
			cw.file.WriteString(fmt.Sprintf("@%v.%d\n", cw.currentVMFile, index))
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

// writePushDregister pushes the current value of D to the stack
func (cw *CodeWriter) writePushDregister() {
	// Write to stack the value of D
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("A=M" + "\n")
	cw.file.WriteString("M=D" + "\n")
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("M=M+1" + "\n")
}

// writePopToDregister pops the current value from the stack and writes to the D-Register
func (cw *CodeWriter) writePopToDregister() {
	// get current stack pointer (points to stack memory location)
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("A=M-1" + "\n")

	// Get top's value and set it to 0 after
	cw.file.WriteString("D=M" + "\n") // popped value to D-register
	cw.file.WriteString("M=0" + "\n")

	// Get stack pointer and also decrease it by one as we'll remove just one item from stac
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("M=M-1" + "\n")
}
