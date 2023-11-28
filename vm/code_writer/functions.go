package code_writer

import (
	"strconv"
)

// WriteCall writes the assembly code that is the translation of the given call command
func (cw *CodeWriter) WriteCall(functionName string, numArgs int) {
	returnLabel := "return_to_" + cw.currentFunc +
		"_from_" + functionName + "_" + generateRandomString()

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
	cw.WriteGotoFunc(functionName)

	// write (return-address)
	cw.file.WriteString("// (return-address)" + "\n")
	cw.file.WriteString("(" + returnLabel + ")" + "\n")

	cw.previousFunc = cw.currentFunc
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
