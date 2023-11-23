package code_writer

import (
	"os"
	"path/filepath"
	"strings"
)

type CodeWriter struct {
	file             *os.File
	currentVMFile    string
	currentFunc      string // current executed func
	previousFunc     string // previously executed func
	beingDefinedFunc string
	stack            *Stack
	SP               int
}

// Constructor: Opens the output file/stream and gets ready to write into it.
func NewCodeWriter(outputPath string) (*CodeWriter, error) {
	f, err := os.Create(outputPath)
	if err != nil {
		return nil, err
	}

	s := NewStack()
	return &CodeWriter{
		file:  f,
		stack: s,
		SP:    256,
	}, nil
}

// SetCurrentVMFile Sets the current VM file
func (cw *CodeWriter) SetCurrentVMFile(currentVMFile string) {
	// removing .asm and getting pure file name without extension
	base := filepath.Base(currentVMFile)
	fileName := strings.TrimSuffix(base, filepath.Ext(base))

	cw.currentVMFile = fileName
}
