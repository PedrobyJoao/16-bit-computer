package code_writer

// WriteInit : Writes the bootstrap code which is basically setting SP=256 and calls Sys.init
func (cw *CodeWriter) WriteInit() {
	cw.file.WriteString("// Bootstrap code" + "\n")
	cw.file.WriteString("@256" + "\n")
	cw.file.WriteString("D=A" + "\n")
	cw.file.WriteString("@SP" + "\n")
	cw.file.WriteString("M=D" + "\n")
	cw.currentFunc = "sys.init"
	cw.WriteCall("Sys.init", 0)
}
