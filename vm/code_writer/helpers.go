package code_writer

// close: Closes the output file.
func (cw *CodeWriter) close() {
	cw.file.Close()
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
