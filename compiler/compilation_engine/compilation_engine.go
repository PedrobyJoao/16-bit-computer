package compilation_engine

import (
	"fmt"
	"io/fs"
	"log"
	"path/filepath"
	"strings"

	"github.com/PedrobyJoao/16-bit-computer/compiler/symbol_table"
	"github.com/PedrobyJoao/16-bit-computer/compiler/tokenizer"
	"github.com/PedrobyJoao/16-bit-computer/compiler/vm_writer"
)

// TODO: before printing and compiling stuffs that we're expecting to be
// following the grammar rules, we should first check the token type
// to see if they're valid accordingly to the grammar

const (
	tab string = "    "
)

type CompilationEngine struct {
	tokenizer *tokenizer.Tokenizer
	vmWriter  *vm_writer.VmWriter

	classSymbolTable      *symbol_table.SymbolTable
	subroutineSymbolTable *symbol_table.SymbolTable
	allAppClasses         map[string]bool
	className             string

	// labelCounter identifies uniquely labels
	labelCounter int
}

// New creates a new compilation engine receiving as an input a Tokenizer and
// the output path
func New(inputPath, outputPath string) *CompilationEngine {
	tokenizer, err := tokenizer.NewTokenizer(inputPath)
	if err != nil {
		log.Fatalf("Failed to create tokenizer: %s", err)
	}

	vmWriter, err := vm_writer.New(outputPath)
	if err != nil {
		log.Fatalf("Failed to create vm writer: %s", err)
	}

	allAppClasses, err := getAwareOfOtherClasses(filepath.Dir(inputPath))
	if err != nil {
		log.Fatalf("Failed to get aware of other classes: %s", err)
	}

	return &CompilationEngine{
		tokenizer:             tokenizer,
		vmWriter:              vmWriter,
		classSymbolTable:      symbol_table.New(),
		subroutineSymbolTable: symbol_table.New(),
		allAppClasses:         allAppClasses,
	}
}

// WrapperTokenizerAdvance advances the tokenizer until a token is found
func (ce *CompilationEngine) WrapperTokenizerAdvance() {
	err := ce.tokenizer.AdvanceUntilToken()
	if err != nil {
		log.Fatalf("Failed to advance tokenizer: %s", err)
	}
}

// getAwareOfOtherClasses checks other available classes within the directory or
// child directories. If it finds one, it adds it to the allAppClasses map.
func getAwareOfOtherClasses(rootAppPath string) (map[string]bool, error) {
	allAppClasses := make(map[string]bool)
	err := filepath.WalkDir(rootAppPath, func(path string, d fs.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if !d.IsDir() {
			ext := filepath.Ext(d.Name())
			if ext == ".jack" || ext == ".vm" {
				classname := strings.TrimSuffix(d.Name(), ext)
				allAppClasses[classname] = true
			}
		}
		return nil
	})
	if err != nil {
		return allAppClasses, fmt.Errorf("error walking through directories: %w", err)
	}
	return allAppClasses, nil
}
