package compilation_engine

import (
	"fmt"
	"log"
	"os"
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
	outFile   *os.File
	vmWriter  *vm_writer.VmWriter

	classSymbolTable      *symbol_table.SymbolTable
	subroutineSymbolTable *symbol_table.SymbolTable
	className             string
	whiteSpaces           int
}

// New creates a new compilation engine receiving as an input a Tokenizer and
// an output of type outFile to write the parsed tokens
func New(inputPath string, outFile *os.File) *CompilationEngine {
	tokenizer, err := tokenizer.NewTokenizer(inputPath)
	if err != nil {
		log.Fatalf("Failed to create tokenizer: %s", err)
	}

	return &CompilationEngine{
		tokenizer:             tokenizer,
		vmWriter:              vm_writer.New(outFile),
		classSymbolTable:      symbol_table.New(),
		subroutineSymbolTable: symbol_table.New(),
		outFile:               outFile,
	}
}

// WriteTerminalTag
func (ce *CompilationEngine) WriteTerminal() {
	tabs := strings.Repeat(" ", ce.whiteSpaces)
	ce.outFile.WriteString(tabs)

	currentToken := ce.tokenizer.GetCurrentToken()
	if currentToken == "<" {
		currentToken = "&lt;"
	} else if currentToken == ">" {
		currentToken = "&gt;"
	} else if currentToken == "&" {
		currentToken = "&amp;"
	}

	ce.outFile.WriteString(
		fmt.Sprintf("<%s> %s </%s>\n",
			ce.tokenizer.GetTokenType(),
			currentToken,
			ce.tokenizer.GetTokenType(),
		))

	err := ce.tokenizer.WrapAdvance()
	if err != nil {
		log.Fatalf(
			"Failed to advance tokenizer after writing terminal: %s",
			err)
	}
}

// WriteNonTerminalTag
func (ce *CompilationEngine) WriteNonTerminal(tag string) {
	tabs := strings.Repeat(" ", ce.whiteSpaces)
	ce.outFile.WriteString(tabs)
	ce.outFile.WriteString(fmt.Sprintf("<%s>\n", tag))
}
