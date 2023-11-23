package code_writer

import (
	"fmt"
	"strconv"

	"github.com/PedrobyJoao/16-bit-computer/vm/parser"
)

// WriteLabel : Writes the assembly code that is the translation of the given label command.
func (cw *CodeWriter) WriteLabel(label string) {
	if cw.beingDefinedFunc != "" {
		cw.file.WriteString("(" + cw.beingDefinedFunc + "$" + label + ")" + "\n")
	} else {
		cw.file.WriteString("(" + label + ")" + "\n")
	}
}

// WriteGoto: Writes the assembly code that is the translation of the given goto command.
func (cw *CodeWriter) WriteGoto(label string, fnc bool) {
	if fnc {
		cw.file.WriteString("@" + label + "\n")
		cw.file.WriteString("0;JMP" + "\n")
	} else if cw.beingDefinedFunc != "" {
		cw.file.WriteString("@" + cw.beingDefinedFunc + "$" + label + "\n")
		cw.file.WriteString("0;JMP" + "\n")
	} else {
		cw.file.WriteString("@" + label + "\n")
		cw.file.WriteString("0;JMP" + "\n")
	}
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

// WriteCall writes the assembly code that is the translation of the given call command
func (cw *CodeWriter) WriteCall(functionName string, numArgs int) {
	returnLabel := "return_to_" + cw.currentFunc + "_from_" + functionName

	// push return-label
	cw.file.WriteString("// push return-label" + "\n")
	cw.file.WriteString("@" + returnLabel + "\n")
	cw.file.WriteString("D=A" + "\n")
	cw.writePushDregister()

	// push LCL
	cw.file.WriteString("// push LCL" + "\n")
	cw.file.WriteString("@LCL" + "\n")
	cw.file.WriteString("D=M" + "\n")
	cw.writePushDregister()

	// push ARG
	cw.file.WriteString("// push ARG" + "\n")
	cw.file.WriteString("@ARG" + "\n")
	cw.file.WriteString("D=M" + "\n")
	cw.writePushDregister()

	// push THIS
	cw.file.WriteString("// push THIS" + "\n")
	cw.file.WriteString("@THIS" + "\n")
	cw.file.WriteString("D=M" + "\n")
	cw.writePushDregister()

	// push THAT
	cw.file.WriteString("// push THAT" + "\n")
	cw.file.WriteString("@THAT" + "\n")
	cw.file.WriteString("D=M" + "\n")
	cw.writePushDregister()

	// ARG = SP - 5 - numArgs
	// SP - 5 - numArgs = out
	cw.file.WriteString("// ARG = SP - 5 - numArgs" + "\n")
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("D=M" + "\n")
	cw.file.WriteString("@5" + "\n")
	cw.file.WriteString("D=D-A" + "\n")
	cw.file.WriteString("@" + strconv.Itoa(numArgs) + "\n")
	cw.file.WriteString("D=D-A" + "\n")
	// ARG = out
	cw.file.WriteString("@ARG" + "\n")
	cw.file.WriteString("M=D" + "\n")

	// LCL = SP
	cw.file.WriteString("// LCL = SP" + "\n")
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("D=M" + "\n")
	cw.file.WriteString("@LCL" + "\n")
	cw.file.WriteString("M=D" + "\n")

	// goto f
	cw.file.WriteString("// goto " + functionName + "\n")
	cw.WriteGoto(functionName, true)

	// write (return-address)
	cw.file.WriteString("// (return-address)" + "\n")
	cw.file.WriteString("(" + returnLabel + ")" + "\n")

	cw.currentFunc = functionName
}

// WriteFunction: Writes the assembly code that is the translation of the given function command.
func (cw *CodeWriter) WriteFunction(functionName string, numLocals int) {
	cw.beingDefinedFunc = functionName

	// write (f)
	cw.file.WriteString("(" + functionName + ")" + "\n")

	// initialize all local variables to 0 (remember, previously when calling we did LCL = SP)
	for i := 0; i < numLocals; i++ {
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("A=M" + "\n")
		cw.file.WriteString("M=0" + "\n")
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("M=M+1" + "\n")
	}
}

// WriteReturn: Writes the assembly code that is the translation of the given return command.
func (cw *CodeWriter) WriteReturn() {
	// FRAME temporary variable under R5
	// RET temporary variable under R6

	// FRAME = LCL (frame is a temporary variable)
	cw.file.WriteString("@LCL" + "\n")
	cw.file.WriteString("D=M" + "\n")
	cw.file.WriteString("@R5" + "\n")
	cw.file.WriteString("M=D" + "\n")

	// RET = *(FRAME - 5)
	cw.writeFromFrameTo("R6")

	// *ARG = pop()
	cw.writePopToDregister()
	cw.file.WriteString("@ARG" + "\n")
	cw.file.WriteString("A=M" + "\n")
	cw.file.WriteString("M=D" + "\n")

	// SP = ARG + 1
	cw.file.WriteString("@ARG" + "\n")
	cw.file.WriteString("D=M+1" + "\n")
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("M=D" + "\n")

	// THAT = *(FRAME - 1)
	cw.writeFromFrameTo("THAT")

	// THIS = *(FRAME - 2)
	cw.writeFromFrameTo("THIS")

	// ARG = *(FRAME - 3)
	cw.writeFromFrameTo("ARG")

	// LCL = *(FRAME - 4)
	cw.writeFromFrameTo("LCL")

	// goto RET (return address)
	cw.file.WriteString("@R6" + "\n")
	cw.file.WriteString("A=M" + "\n")
	cw.file.WriteString("0;JMP" + "\n")

	cw.currentFunc = cw.previousFunc
}

// writeFromFrameTo do operations such as LCL = *(FRAME - 4) where LCL is passed as an argument
// to this function
func (cw *CodeWriter) writeFromFrameTo(dest string) {
	cw.file.WriteString("@R5" + "\n")
	cw.file.WriteString("D=M" + "\n")

	if dest == "LCL" {
		cw.file.WriteString("@4" + "\n")
	} else if dest == "ARG" {
		cw.file.WriteString("@3" + "\n")
	} else if dest == "THIS" {
		cw.file.WriteString("@2" + "\n")
	} else if dest == "THAT" {
		cw.file.WriteString("@1" + "\n")
	} else if dest == "RET" {
		cw.file.WriteString("@5" + "\n")
	}

	cw.file.WriteString("A=D-A" + "\n")
	cw.file.WriteString("D=M" + "\n")
	cw.file.WriteString("@" + dest + "\n") // i.e.: @LCL
	cw.file.WriteString("M=D" + "\n")
}

// WriteArithmetic: Writes the assembly code that is the translation of the given arithmetic command.
func (cw *CodeWriter) WriteArithmetic(command string) {
	if command == "add" || command == "sub" ||
		command == "and" || command == "or" {

		// D=pop()
		cw.writePopToDregister()

		// A=*SP-1
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("A=M-1" + "\n")

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
