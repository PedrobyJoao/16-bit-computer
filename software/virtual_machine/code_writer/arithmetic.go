package code_writer

import (
	"fmt"
)

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
		// Subtract 1 because the Stack Pointer doesn't point to the top but to top + 1
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("A=M-1" + "\n")

		if command == "neg" {
			cw.file.WriteString("M=-M" + "\n")

		} else if command == "not" {
			cw.file.WriteString("M=!M" + "\n")
		}
	} else {
		// gt, eq, lt commands

		// base example for gt:
		// ===================
		// D=x-y
		// @gt
		// D;JLE
		// *(SP-1)=0
		// goto after-gt
		// (gt)
		// *(SP-1)=-1
		// (after-gt)

		// D=pop()
		// y == D
		cw.writePopToDregister()

		// A=*SP-1
		// x == M
		cw.file.WriteString("@SP" + "\n")
		cw.file.WriteString("A=M-1" + "\n")

		// generate random label
		rndLabel := generateRandomString()

		cw.file.WriteString("D=M-D" + "\n")
		// Get label address (reminder: it was labeled with func$labelName)
		cw.file.WriteString(fmt.Sprintf("@%s$%s\n",
			cw.beingDefinedFunc, rndLabel))

		if command == "eq" {
			cw.file.WriteString("D;JNE" + "\n")
		} else if command == "gt" {
			cw.file.WriteString("D;JLE" + "\n")
		} else if command == "lt" {
			cw.file.WriteString("D;JGE" + "\n")
		}

		// *(SP-1)=-1
		cw.writeNeg1ToTopMostSPValue()

		cw.WriteGoto(fmt.Sprintf("after-%s", rndLabel))
		cw.WriteLabel(rndLabel)

		// *(SP-1)=0
		cw.write0ToTopMostSPValue()
		cw.WriteLabel(fmt.Sprintf("after-%s", rndLabel))
	}
}

// write0ToTopMostSPValue writes 0 to *(SP-1), meaning overwritten the current value of the top-most
// value to 0. (Note: we're not setting *SP=0 but *(SP-1) = 0)
func (cw *CodeWriter) write0ToTopMostSPValue() {
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("A=M-1" + "\n")
	cw.file.WriteString("M=0" + "\n")
}

// writeNeg1ToTopMostSPValue writes -1 to *(SP-1), meaning overwritten the current value of the top-most
// value to -1. (Note: we're not setting *SP=-1 but *(SP-1) = -1)
func (cw *CodeWriter) writeNeg1ToTopMostSPValue() {
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("A=M-1" + "\n")
	cw.file.WriteString("M=-1" + "\n")
}
