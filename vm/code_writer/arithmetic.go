package code_writer

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
		cw.file.WriteString("A=A-1" + "\n")

		if command == "neg" {
			cw.file.WriteString("M=-M" + "\n")
		} else if command == "not" {
			cw.file.WriteString("M=!M" + "\n")
		}
	}
}
