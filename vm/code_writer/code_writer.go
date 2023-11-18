package code_writer

import (
	"os"
	"path/filepath"
	"strings"
)

type CodeWriter struct {
	file             *os.File
	outFileName      string
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

	// removing .asm and getting pure file name without extension
	base := filepath.Base(outputPath)
	fileName := strings.TrimSuffix(base, filepath.Ext(base))

	s := NewStack()
	return &CodeWriter{
		file:        f,
		outFileName: fileName,
		stack:       s,
		SP:          256,
	}, nil
}
