package code_writer

import (
	"crypto/rand"
	"fmt"
	"io"
)

// close: Closes the output file.
func (cw *CodeWriter) Close() {
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

// WriteDebugCommand makes it easy to know when a command is done when using
// the cpu emulator
func (cw *CodeWriter) WriteDebugCommand() {
	cw.file.WriteString("@22222")
}

func generateRandomString() string {
	// it may not be performatic. In that case, we change the following implemention
	b := make([]byte, 10)
	if _, err := io.ReadFull(rand.Reader, b); err != nil {
		panic(err)
	}
	return fmt.Sprintf("a%x", b) // 'a' because label should not start with digit
}
