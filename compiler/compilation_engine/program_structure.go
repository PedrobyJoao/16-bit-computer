package compilation_engine

import (
	"log"
)

// CompileClass compiles a class.
//
// Context-free syntax: 'class' className '{' classVarDec* subroutineDec* '}'
func (ce *CompilationEngine) CompileClass() {
	err := ce.tokenizer.WrapAdvance()
	if err != nil {
		log.Fatalf(
			"Failed to advance tokenizer after starting to compile class: %s",
			err)
	}

	ce.WriteNonTerminal("class")
	ce.whiteSpaces += 2

	// print out "class" which is a keyword terminal
	ce.WriteTerminal()

	// print out className which is a identifier terminal
	ce.WriteTerminal()

	// print out '{' which is a symbol terminal still within the class non-terminal
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

	// print out '}' which is a symbol terminal still within the class non-terminal
	ce.WriteTerminal()
	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/class")

	ce.outFile.Close()
}

// CompileClassVarDec compiles a class var declaration
//
// Context-free syntax: ('static' | 'field') type varName (',' varName)* ';'
//
// type: int | char | boolean | className
func (ce *CompilationEngine) CompileClassVarDec() {
	ce.WriteNonTerminal("classVarDec")
	ce.whiteSpaces += 2

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

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/classVarDec")
}

// CompileSubroutine compiles a subroutine
//
// Context-free syntax:
// ('constructor' | 'function' | 'method') ('void' | type) subroutineName
// '(' parameterList ')' subroutineBody
//
// subroutineBody = '{' varDec* statements '}'
func (ce *CompilationEngine) CompileSubroutine() {
	ce.WriteNonTerminal("subroutineDec")
	ce.whiteSpaces += 2

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
	ce.compileSubroutineBody()

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/subroutineDec")
}

// compileSubroutineBody compiles a subroutine body
//
// Context-free syntax: '{' varDec* statements '}'
func (ce *CompilationEngine) compileSubroutineBody() {
	ce.WriteNonTerminal("subroutineBody")
	ce.whiteSpaces += 2

	// '{' is a terminal symbol
	ce.WriteTerminal()

	// compile varDec* (possibly being more than one)
	for ce.tokenizer.GetCurrentToken() == "var" {
		ce.CompileVarDec()
	}

	ce.CompileStatements()

	// '}' is a terminal symbol
	ce.WriteTerminal()

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/subroutineBody")
}

// CompileParameterList compiles a parameter list
//
// Context-free syntax: ((type varName) (',' type varName)*)?
func (ce *CompilationEngine) CompileParameterList() {
	ce.WriteNonTerminal("parameterList")
	ce.whiteSpaces += 2

	if ce.tokenizer.GetCurrentToken() != ")" {
		// type is either a keyword or an identifier (terminal)
		ce.WriteTerminal()

		// varName is a terminal identifier
		ce.WriteTerminal()

		for ce.tokenizer.GetCurrentToken() == "," {
			// print out ',' symbol terminal
			ce.WriteTerminal()

			// type is either a keyword or an identifier (terminal)
			ce.WriteTerminal()

			// varName is a terminal identifier
			ce.WriteTerminal()
		}
	}

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/parameterList")
}

// CompileVarDec compiles a var declaration
// Content-free syntax:
// 'var' type varName (',' varName)* ';'
func (ce *CompilationEngine) CompileVarDec() {
	ce.WriteNonTerminal("varDec")
	ce.whiteSpaces += 2

	// 'var' is a terminal keyword
	ce.WriteTerminal()

	// type is either a keyword or an identifier (terminal)
	ce.WriteTerminal()

	// varName is a terminal identifier
	ce.WriteTerminal()

	for ce.tokenizer.GetCurrentToken() == "," {
		// print out ',' symbol terminal
		ce.WriteTerminal()

		// varName is a terminal identifier
		ce.WriteTerminal()
	}

	// print out ';' symbol terminal
	ce.WriteTerminal()

	ce.whiteSpaces -= 2
	ce.WriteNonTerminal("/varDec")
}
