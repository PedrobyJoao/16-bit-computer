package compilation_engine

import (
	"log"

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
	// outFile   *os.File
	vmWriter *vm_writer.VmWriter

	classSymbolTable      *symbol_table.SymbolTable
	subroutineSymbolTable *symbol_table.SymbolTable
	className             string
	whiteSpaces           int

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

	return &CompilationEngine{
		tokenizer:             tokenizer,
		vmWriter:              vmWriter,
		classSymbolTable:      symbol_table.New(),
		subroutineSymbolTable: symbol_table.New(),
		// outFile:               outFile,
	}
}

// WrapperTokenizerAdvance advances the tokenizer until a token is found
func (ce *CompilationEngine) WrapperTokenizerAdvance() {
	err := ce.tokenizer.AdvanceUntilToken()
	if err != nil {
		log.Fatalf("Failed to advance tokenizer: %s", err)
	}
}

// WriteTerminalTag
// func (ce *CompilationEngine) WriteTerminal() {
// 	tabs := strings.Repeat(" ", ce.whiteSpaces)
// 	ce.outFile.WriteString(tabs)
//
// 	currentToken := ce.tokenizer.GetCurrentToken()
// 	if currentToken == "<" {
// 		currentToken = "&lt;"
// 	} else if currentToken == ">" {
// 		currentToken = "&gt;"
// 	} else if currentToken == "&" {
// 		currentToken = "&amp;"
// 	}
//
// 	ce.outFile.WriteString(
// 		fmt.Sprintf("<%s> %s </%s>\n",
// 			ce.tokenizer.GetTokenType(),
// 			currentToken,
// 			ce.tokenizer.GetTokenType(),
// 		))
//
// 	err := ce.tokenizer.WrapAdvance()
// 	if err != nil {
// 		log.Fatalf(
// 			"Failed to advance tokenizer after writing terminal: %s",
// 			err)
// 	}
// }

// WriteNonTerminalTag
// func (ce *CompilationEngine) WriteNonTerminal(tag string) {
// 	tabs := strings.Repeat(" ", ce.whiteSpaces)
// 	ce.outFile.WriteString(tabs)
// 	ce.outFile.WriteString(fmt.Sprintf("<%s>\n", tag))
// }
