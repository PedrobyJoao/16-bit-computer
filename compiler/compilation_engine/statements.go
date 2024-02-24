package compilation_engine

import (
	"fmt"
	"log"
)

// CompileStatements compiles a sequence of statements not including '{' or '}'
// Content-free syntax:
// statement*
func (ce *CompilationEngine) CompileStatements() {
	// ce.writeNonTerminal("statements")
	ce.whiteSpaces += 2

	for ce.tokenizer.GetCurrentToken() != "}" {
		if ce.tokenizer.GetCurrentToken() == "let" {
			ce.CompileLet()
		} else if ce.tokenizer.GetCurrentToken() == "if" {
			ce.CompileIf()
		} else if ce.tokenizer.GetCurrentToken() == "while" {
			ce.CompileWhile()
		} else if ce.tokenizer.GetCurrentToken() == "do" {
			ce.CompileDo()
		} else if ce.tokenizer.GetCurrentToken() == "return" {
			ce.CompileReturn()
		} else {
			log.Fatalf(fmt.Sprintf("Unexpected statement token: %s",
				ce.tokenizer.GetCurrentToken()))
		}
	}

	ce.whiteSpaces -= 2
	// ce.writeNonTerminal("/statements")
}

// CompileDo compiles a do statement
// Content-free syntax:
// 'do' subroutineCall ';'
func (ce *CompilationEngine) CompileDo() {
	// ce.writeNonTerminal("doStatement")
	ce.whiteSpaces += 2

	// 'do' is a terminal keyword
	ce.WrapperTokenizerAdvance()

	// subroutineCall is a non-terminal
	ce.compileSubroutineCall()

	// ';' is a terminal symbol
	ce.WrapperTokenizerAdvance()
}

// CompileLet compiles a let statement
// Context-free syntax:
// 'let' varName ('[' expression ']')? '=' expression ';'
func (ce *CompilationEngine) CompileLet() {
	// ce.writeNonTerminal("letStatement")
	ce.whiteSpaces += 2

	// 'let' is a terminal keyword
	ce.WrapperTokenizerAdvance()

	// varName is a terminal identifier
	ce.WrapperTokenizerAdvance()

	if ce.tokenizer.GetCurrentToken() == "[" {
		// '[' is a terminal symbol
		ce.WrapperTokenizerAdvance()

		// expression is a non-terminal
		ce.CompileExpression()

		// ']' is a terminal symbol
		ce.WrapperTokenizerAdvance()
	}

	// '=' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// expression is a non-terminal
	ce.CompileExpression()

	// ';' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	ce.whiteSpaces -= 2
	// ce.writeNonTerminal("/letStatement")
}

// CompileWhile compiles a while statement
// Context-free syntax:
// 'while' '(' expression ')' '{' statements '}'
func (ce *CompilationEngine) CompileWhile() {
	// ce.writeNonTerminal("whileStatement")
	ce.whiteSpaces += 2

	// 'while' is a terminal keyword
	ce.WrapperTokenizerAdvance()

	// '(' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// expression is a non-terminal
	ce.CompileExpression()

	// ')' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// '{' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// statements is a non-terminal
	ce.CompileStatements()

	// '}' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	ce.whiteSpaces -= 2
	// ce.writeNonTerminal("/whileStatement")
}

// CompileReturn compiles a return statement
// Context-free syntax:
// 'return' expression? ';'
func (ce *CompilationEngine) CompileReturn() {
	// ce.writeNonTerminal("returnStatement")
	ce.whiteSpaces += 2

	// 'return' is a terminal keyword
	ce.WrapperTokenizerAdvance()

	if ce.tokenizer.GetCurrentToken() != ";" {
		// expression is a non-terminal
		ce.CompileExpression()
	}

	// ';' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	ce.whiteSpaces -= 2
	// ce.writeNonTerminal("/returnStatement")
}

// CompileIf compiles an if statement, possibly with a trailling else clause
// Content-free syntax:
// 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}')?
func (ce *CompilationEngine) CompileIf() {
	// ce.writeNonTerminal("ifStatement")
	ce.whiteSpaces += 2

	// 'if' is a terminal keyword
	ce.WrapperTokenizerAdvance()

	// '(' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// expression is a non-terminal
	ce.CompileExpression()

	// ')' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// '{' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// statements is a non-terminal
	ce.CompileStatements()

	// '}' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	if ce.tokenizer.GetCurrentToken() == "else" {
		// 'else' is a terminal keyword
		ce.WrapperTokenizerAdvance()

		// '{' is a terminal symbol
		ce.WrapperTokenizerAdvance()

		// statements is a non-terminal
		ce.CompileStatements()

		// '}' is a terminal symbol
		ce.WrapperTokenizerAdvance()
	}

	ce.whiteSpaces -= 2
	// ce.writeNonTerminal("/ifStatement")
}
