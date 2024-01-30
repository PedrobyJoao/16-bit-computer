package compilation_engine

// CompileStatements compiles a sequence of statements not including '{' or '}'
// Content-free syntax:
// statement*
func (ce *CompilationEngine) CompileStatements() {
	ce.outFile.WriteString("<statements>\n")
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
		}
	}

	ce.whiteSpaces -= 2
	ce.outFile.WriteString("</statements>\n")
}

// CompileDo compiles a do statement
// Content-free syntax:
// 'do' subroutineCall ';'
func (ce *CompilationEngine) CompileDo() {
	ce.outFile.WriteString("<doStatement>\n")
	ce.whiteSpaces += 2

	// 'do' is a terminal keyword
	ce.WriteTerminal()

	// subroutineCall is a non-terminal
	ce.compileSubroutineCall()

	ce.whiteSpaces -= 2
	ce.outFile.WriteString("</doStatement>\n")
}

// CompileLet compiles a let statement
// Context-free syntax:
// 'let' varName ('[' expression ']')? '=' expression ';'
func (ce *CompilationEngine) CompileLet() {
	ce.outFile.WriteString("<letStatement>\n")
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
	ce.outFile.WriteString("</letStatement>\n")
}

// CompileWhile compiles a while statement
// Context-free syntax:
// 'while' '(' expression ')' '{' statements '}'
func (ce *CompilationEngine) CompileWhile() {
	ce.outFile.WriteString("<whileStatement>\n")
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
	ce.outFile.WriteString("</whileStatement>\n")
}

// CompileReturn compiles a return statement
// Context-free syntax:
// 'return' expression? ';'
func (ce *CompilationEngine) CompileReturn() {
	ce.outFile.WriteString("<returnStatement>\n")
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
	ce.outFile.WriteString("</returnStatement>\n")
}

// CompileIf compiles an if statement, possibly with a trailling else clause
// Content-free syntax:
// 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}')?
func (ce *CompilationEngine) CompileIf() {
	ce.outFile.WriteString("<ifStatement>\n")
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
}
