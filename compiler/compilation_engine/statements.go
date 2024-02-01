package compilation_engine

import (
	"fmt"
)

// CompileStatements compiles a sequence of statements not including '{' or '}'
// Content-free syntax:
// statement*
func (ce *CompilationEngine) CompileStatements() {
	ce.WriteNonTerminal("statements")
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
			panic(fmt.Sprintf("Unexpected statement token: %s",
				ce.tokenizer.GetCurrentToken()))
		}
	}

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/statements")
}

// CompileDo compiles a do statement
// Content-free syntax:
// 'do' subroutineCall ';'
func (ce *CompilationEngine) CompileDo() {
	ce.WriteNonTerminal("doStatement")
	ce.whiteSpaces += 2

	// 'do' is a terminal keyword
	ce.WriteTerminal()

	// subroutineCall is a non-terminal
	ce.compileSubroutineCall()

	// ';' is a terminal symbol
	ce.WriteTerminal()

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/doStatement")
}

// CompileLet compiles a let statement
// Context-free syntax:
// 'let' varName ('[' expression ']')? '=' expression ';'
func (ce *CompilationEngine) CompileLet() {
	ce.WriteNonTerminal("letStatement")
	ce.whiteSpaces += 2

	// 'let' is a terminal keyword
	ce.WriteTerminal()

	// varName is a terminal identifier
	ce.WriteTerminal()

	if ce.tokenizer.GetCurrentToken() == "[" {
		// '[' is a terminal symbol
		ce.WriteTerminal()

		// expression is a non-terminal
		ce.CompileExpression()

		// ']' is a terminal symbol
		ce.WriteTerminal()
	}

	// '=' is a terminal symbol
	ce.WriteTerminal()

	// expression is a non-terminal
	ce.CompileExpression()

	// ';' is a terminal symbol
	ce.WriteTerminal()

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/letStatement")
}

// CompileWhile compiles a while statement
// Context-free syntax:
// 'while' '(' expression ')' '{' statements '}'
func (ce *CompilationEngine) CompileWhile() {
	ce.WriteNonTerminal("whileStatement")
	ce.whiteSpaces += 2

	// 'while' is a terminal keyword
	ce.WriteTerminal()

	// '(' is a terminal symbol
	ce.WriteTerminal()

	// expression is a non-terminal
	ce.CompileExpression()

	// ')' is a terminal symbol
	ce.WriteTerminal()

	// '{' is a terminal symbol
	ce.WriteTerminal()

	// statements is a non-terminal
	ce.CompileStatements()

	// '}' is a terminal symbol
	ce.WriteTerminal()

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/whileStatement")
}

// CompileReturn compiles a return statement
// Context-free syntax:
// 'return' expression? ';'
func (ce *CompilationEngine) CompileReturn() {
	ce.WriteNonTerminal("returnStatement")
	ce.whiteSpaces += 2

	// 'return' is a terminal keyword
	ce.WriteTerminal()

	if ce.tokenizer.GetCurrentToken() != ";" {
		// expression is a non-terminal
		ce.CompileExpression()
	}

	// ';' is a terminal symbol
	ce.WriteTerminal()

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/returnStatement")
}

// CompileIf compiles an if statement, possibly with a trailling else clause
// Content-free syntax:
// 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}')?
func (ce *CompilationEngine) CompileIf() {
	ce.WriteNonTerminal("ifStatement")
	ce.whiteSpaces += 2

	// 'if' is a terminal keyword
	ce.WriteTerminal()

	// '(' is a terminal symbol
	ce.WriteTerminal()

	// expression is a non-terminal
	ce.CompileExpression()

	// ')' is a terminal symbol
	ce.WriteTerminal()

	// '{' is a terminal symbol
	ce.WriteTerminal()

	// statements is a non-terminal
	ce.CompileStatements()

	// '}' is a terminal symbol
	ce.WriteTerminal()

	if ce.tokenizer.GetCurrentToken() == "else" {
		// 'else' is a terminal keyword
		ce.WriteTerminal()

		// '{' is a terminal symbol
		ce.WriteTerminal()

		// statements is a non-terminal
		ce.CompileStatements()

		// '}' is a terminal symbol
		ce.WriteTerminal()
	}
	ce.WriteNonTerminal("/ifStatement")
}
