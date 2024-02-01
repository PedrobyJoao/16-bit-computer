package compilation_engine

import (
	"log"

	"github.com/PedrobyJoao/16-bit-computer/compiler/tokenizer"
)

// isOp returns true if the current token is an operator
func (ce *CompilationEngine) isOp() bool {
	op := map[string]bool{
		"+":  true,
		"-":  true,
		"*":  true,
		"/":  true,
		"&;": true,
		"|":  true,
		"<;": true,
		">;": true,
		"=":  true,
	}

	if _, ok := op[ce.tokenizer.GetCurrentToken()]; ok {
		return true
	}
	return false
}

// CompileExpression compiles an expression
// Content-free syntax:
// term (op term)*
func (ce *CompilationEngine) CompileExpression() {
	ce.WriteNonTerminal("expression")
	ce.whiteSpaces += 2

	ce.CompileTerm()

	for ce.isOp() {
		// op is a terminal-symbol
		ce.WriteTerminal()

		ce.CompileTerm()
	}

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/expression")
}

// CompileTerm compiles a term
// Note: it's NOT a terminal!
// Content-free syntax:
// integerConstant | stringConstant | keywordConstant | varName |
// varName '[' expression ']' | subroutineCall | '(' expression ')' |
// unaryOp term
func (ce *CompilationEngine) CompileTerm() {
	ce.WriteNonTerminal("term")
	ce.whiteSpaces += 2

	if ce.tokenizer.GetTokenType() == tokenizer.Identifier {
		// CASE: most of the or cases

		nextToken, err := ce.tokenizer.DoOneLookAhead()
		if err != nil {
			log.Fatalf(
				"Failed to do one look ahead while compiling term: %s",
				err)
		}

		// varName[expression]
		if nextToken == "[" {
			// varName is a terminal-identifier
			ce.WriteTerminal()

			// '[' is a terminal-symbol
			ce.WriteTerminal()

			ce.CompileExpression()

			// ']' is a terminal-symbol
			ce.WriteTerminal()
		} else if nextToken == "." {
			// subroutineCall
			ce.compileSubroutineCall()
		} else {
			// just one of the possible identifier
			ce.WriteTerminal()
		}

	} else if ce.tokenizer.GetCurrentToken() == "(" {
		// CASE: '(' expression ')'
		// '(' is a terminal symbol
		ce.WriteTerminal()

		ce.CompileExpression()

		// ')' is a terminal symbol
		ce.WriteTerminal()
	} else if ce.tokenizer.GetCurrentToken() == "-" || ce.tokenizer.GetCurrentToken() == "~" {
		// CASE: unaryOp term
		// unaryOp is a terminal symbol
		ce.WriteTerminal()

		ce.CompileTerm()
	}

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/term")
}

// CompileExpressionList compiles an expression list
// Content-free syntax:
// (expression (',' expression)*)?
func (ce *CompilationEngine) CompileExpressionList() {
	ce.WriteNonTerminal("expressionList")
	ce.whiteSpaces += 2

	if ce.tokenizer.GetCurrentToken() != ")" {
		ce.CompileExpression()

		for ce.tokenizer.GetCurrentToken() == "," {
			// print out ',' symbol terminal
			ce.WriteTerminal()

			ce.CompileExpression()
		}

	}
	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/expressionList")
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
