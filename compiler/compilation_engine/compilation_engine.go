package compilation_engine

import (
	"fmt"
	"io"
	"log"
	"os"

	"github.com/PedrobyJoao/16-bit-computer/compiler/tokenizer"
)

// TODO: before printing and compiling stuffs that we're expecting to be
// following the grammar rules, we should first check the token type
// to see if they're valid accordingly to the grammar

const (
	tab string = "    "
)

type CompilationEngine struct {
	tokenizer *tokenizer.Tokenizer
	file      *os.File
}

// New creates a new compilation engine receiving as an input a Tokenizer and
// an output of type file to write the parsed tokens
func New(tokenizer *tokenizer.Tokenizer, file *os.File) *CompilationEngine {
	// TODO: should create a tokenizer
	return &CompilationEngine{
		tokenizer: tokenizer,
		file:      file,
	}
}

// WriteTerminalTag
func (ce *CompilationEngine) WriteTerminal() {
	ce.file.WriteString(
		fmt.Sprintf("<%s> %s </%s>\n",
			ce.tokenizer.GetTokenType(),
			ce.tokenizer.GetCurrentToken(),
			ce.tokenizer.GetTokenType(),
		))
	ce.TokenizerWrapAdvance()
}

// CompileClass compiles a class.
//
// Context-free syntaxt: 'class' className '{' classVarDec* subroutineDec* '}'
func (ce *CompilationEngine) CompileClass() {
	ce.TokenizerWrapAdvance()
	ce.file.WriteString("<class>\n")

	// print out "class" which is a keyword terminal
	ce.WriteTerminal()

	// print out className which is a identifier terminal
	ce.WriteTerminal()

	// print out '{' which is a keyword terminal still within the class non-terminal
	ce.WriteTerminal()

	// compile classVarDec* (possibly being more than one)
	for ce.tokenizer.GetCurrentToken() == "static" ||
		ce.tokenizer.GetCurrentToken() == "field" {
		ce.CompileClassVarDec()
	}

	// compile subroutineDec* (possibly being more than one)
	for ce.tokenizer.GetCurrentToken() == "constructor" ||
		ce.tokenizer.GetCurrentToken() == "function" ||
		ce.tokenizer.GetCurrentToken() == "method" {
		ce.CompileSubroutine()
	}

	// print out '}' which is a keyword terminal still within the class non-terminal
	ce.WriteTerminal()
}

// CompileClassVarDec compiles a class var declaration
//
// Context-free syntaxt: ('static' | 'field') type varName (',' varName)* ';'
//
// type: int | char | boolean | className
func (ce *CompilationEngine) CompileClassVarDec() {
	// 'static' or 'field' are terminals keyword
	ce.WriteTerminal()

	// possible `types` are keywords (int, bool...) or an identifier
	ce.WriteTerminal()

	// varName is a terminal identifier
	ce.WriteTerminal()

	// compile possible multiple varNames
	for ce.tokenizer.GetCurrentToken() == "," {
		// print out ','
		ce.WriteTerminal()

		// print out varName
		ce.WriteTerminal()
	}

	// print out ';'
	ce.WriteTerminal()
}

// CompileSubroutine compiles a subroutine
//
// Context-free syntaxt:
// ('constructor' | 'function' | 'method') ('void' | type) subroutineName
// '(' parameterList ')' subroutineBody
//
// subroutineBody = '{' varDec* statements '}'
func (ce *CompilationEngine) CompileSubroutine() {
	// print out terminal keyword of constructor, function or method
	ce.WriteTerminal()

	// print out terminal which may be a keyword or an identifier (for 'void' | type)
	ce.WriteTerminal()

	// print out subroutineName which is a terminal identifier
	ce.WriteTerminal()

	// print out '('
	ce.WriteTerminal()

	// compile parameterList
	ce.CompileParameterList()

	// print out ')'
	ce.WriteTerminal()

	// compile subroutineBody

}

// CompileParameterList compiles a parameter list
func (ce *CompilationEngine) CompileParameterList() {
}

// CompileVarDec compiles a var declaration
func (ce *CompilationEngine) CompileVarDec() {
}

// CompileStatements compiles a sequence of statements
func (ce *CompilationEngine) CompileStatements() {
}

// CompileDo compiles a do statement
func (ce *CompilationEngine) CompileDo() {
}

// CompileLet compiles a let statement
func (ce *CompilationEngine) CompileLet() {
}

// CompileWhile compiles a while statement
func (ce *CompilationEngine) CompileWhile() {
}

// CompileReturn compiles a return statement
func (ce *CompilationEngine) CompileReturn() {
}

// CompileIf compiles an if statement
func (ce *CompilationEngine) CompileIf() {
}

// CompileExpression compiles an expression
func (ce *CompilationEngine) CompileExpression() {
}

// CompileTerm compiles a terminal
func (ce *CompilationEngine) CompileTerm() {
	ce.file.WriteString(
		fmt.Sprintf("<%s> %s </%s>\n",
			ce.tokenizer.GetTokenType(),
			ce.tokenizer.GetCurrentToken(),
			ce.tokenizer.GetTokenType(),
		))
}

// CompileExpressionList compiles an expression list
func (ce *CompilationEngine) CompileExpressionList() {
}

// TokenizerWrapAdvance advances the tokenizer until there is a token
// TODO: move to tokenizer module
func (ce *CompilationEngine) TokenizerWrapAdvance() {
	var err error
	var hasToken bool = false

	for !hasToken {
		hasToken, err = ce.tokenizer.Advance()
		if err != nil {
			if err == io.EOF {
				return
			}
			log.Fatalf("Failed to advance tokenizer: %s", err)
		}
	}
}
