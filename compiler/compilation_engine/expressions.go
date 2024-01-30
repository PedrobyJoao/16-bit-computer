package compilation_engine

import (
	"fmt"
)

// CompileExpression compiles an expression
func (ce *CompilationEngine) CompileExpression() {
}

// CompileTerm compiles a term
//
// Note: it's NOT a terminal!
func (ce *CompilationEngine) CompileTerm() {
	ce.outFile.WriteString(
		fmt.Sprintf("<%s> %s </%s>\n",
			ce.tokenizer.GetTokenType(),
			ce.tokenizer.GetCurrentToken(),
			ce.tokenizer.GetTokenType(),
		))
}

// CompileExpressionList compiles an expression list
func (ce *CompilationEngine) CompileExpressionList() {
}

// compileSubroutineCall compiles a subroutine call, it's a non-terminal
// but at the same time it seems we shouldn't treat it as such and put it tags on it
// Content-free syntax:
// subroutineName '(' expressionList ')' | (className | varName) '.' subroutineName '(' expressionList ')'
func (ce *CompilationEngine) compileSubroutineCall() {
	// subroutineName, className or varName are all identifiers-terminals
	ce.WriteTerminal()

	// case it's a method
	if ce.tokenizer.GetCurrentToken() == "." {
		// '.' is a terminal symbol
		ce.WriteTerminal()

		// subroutineName is a terminal-identifier
		ce.WriteTerminal()
	}

	// '(' is a terminal symbol
	ce.WriteTerminal()

	ce.CompileExpressionList()

	// ')' is a terminal symbol
	ce.WriteTerminal()
}
