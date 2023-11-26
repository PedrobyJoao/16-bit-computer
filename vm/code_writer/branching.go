package code_writer

// WriteLabel : Writes the assembly code that is the translation of the given label command.
func (cw *CodeWriter) WriteLabel(label string) {
	if cw.beingDefinedFunc != "" {
		cw.file.WriteString("(" + cw.beingDefinedFunc + "$" + label + ")" + "\n")
	} else {
		cw.file.WriteString("(" + label + ")" + "\n")
	}
}

// WriteGotoFunc writes a goto command for a function
func (cw *CodeWriter) WriteGotoFunc(label string) {
	cw.file.WriteString("@" + label + "\n")
	cw.file.WriteString("0;JMP" + "\n")
}

// WriteGoto: Writes the assembly code that is the translation of the given goto command.
func (cw *CodeWriter) WriteGoto(label string) {
	if cw.beingDefinedFunc != "" {
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
