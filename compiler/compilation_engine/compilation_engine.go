package compilation_engine

import (
	"fmt"
	"log"
	"os"
	"strings"

	"github.com/PedrobyJoao/16-bit-computer/compiler/tokenizer"
)

// TODO: before printing and compiling stuffs that we're expecting to be
// following the grammar rules, we should first check the token type
// to see if they're valid accordingly to the grammar

const (
	tab string = "    "
)

type CompilationEngine struct {
	tokenizer   *tokenizer.Tokenizer
	outFile     *os.File
	whiteSpaces int
}

// New creates a new compilation engine receiving as an input a Tokenizer and
// an output of type outFile to write the parsed tokens
func New(inputPath string, outFile *os.File) *CompilationEngine {
	tokenizer, err := tokenizer.NewTokenizer(inputPath)
	if err != nil {
		log.Fatalf("Failed to create tokenizer: %s", err)
	}

	return &CompilationEngine{
		tokenizer: tokenizer,
		outFile:   outFile,
	}
}

// WriteTerminalTag
func (ce *CompilationEngine) WriteTerminal() {
	tabs := strings.Repeat(" ", ce.whiteSpaces)
	ce.outFile.WriteString(tabs)

	ce.outFile.WriteString(
		fmt.Sprintf("<%s> %s </%s>\n",
			ce.tokenizer.GetTokenType(),
			ce.tokenizer.GetCurrentToken(),
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
