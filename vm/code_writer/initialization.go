package code_writer

// WriteInit : Writes the bootstrap code which is basically setting SP=256 and calls Sys.init
func (cw *CodeWriter) WriteInit() {
	cw.file.WriteString("@256" + "\n")
	cw.file.WriteString("D=A" + "\n")
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("M=D" + "\n")
	cw.WriteCall("Sys.init", 0)
}

// DefineSysInit writes the function definition for Sys.init
func (cw *CodeWriter) DefineSysInit() {
	cw.WriteFunction("Sys.init", 0)

	// return value
}
