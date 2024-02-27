package compilation_engine

import (
	"log"

	"github.com/PedrobyJoao/16-bit-computer/compiler/symbol_table"
	"github.com/PedrobyJoao/16-bit-computer/compiler/vm_writer"
)

// CompileClass compiles a class.
//
// Context-free syntax: 'class' className '{' classVarDec* subroutineDec* '}'
func (ce *CompilationEngine) CompileClass() {
	ce.WrapperTokenizerAdvance()

	// "class" which is a keyword terminal
	ce.WrapperTokenizerAdvance()

	// className which is a identifier terminal
	ce.className = ce.tokenizer.GetCurrentToken()
	ce.WrapperTokenizerAdvance()

	// '{' which is a symbol terminal still within the class non-terminal
	ce.WrapperTokenizerAdvance()

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

	// '}' which is a symbol terminal still within the class non-terminal
	ce.WrapperTokenizerAdvance()

	err := ce.vmWriter.Close()
	if err != nil {
		log.Fatalf("Failed to close being compiled vm file: %s", err)
	}
}

// CompileClassVarDec compiles a class var declaration
//
// Context-free syntax: ('static' | 'field') type varName (',' varName)* ';'
//
// type: int | char | boolean | className
func (ce *CompilationEngine) CompileClassVarDec() {
	// 'static' or 'field' are terminals keyword
	varKind := ce.tokenizer.GetCurrentToken()
	ce.WrapperTokenizerAdvance()

	// possible `types` are keywords (int, bool...) or an identifier
	varType := ce.tokenizer.GetCurrentToken()
	ce.WrapperTokenizerAdvance()

	// varName is a terminal identifier
	varName := ce.tokenizer.GetCurrentToken()
	ce.WrapperTokenizerAdvance()

	// add to class symbolTable
	ce.classSymbolTable.AddEntry(varName, varType, symbol_table.Kind(varKind))

	// compile possible multiple varNames
	for ce.tokenizer.GetCurrentToken() == "," {
		// ','
		ce.WrapperTokenizerAdvance()

		// varName
		varName = ce.tokenizer.GetCurrentToken()
		ce.WrapperTokenizerAdvance()

		// add to class symbolTable
		ce.classSymbolTable.AddEntry(varName, varType, symbol_table.Kind(varKind))
	}

	// ';'
	ce.WrapperTokenizerAdvance()
}

// CompileSubroutine compiles a subroutine
//
// Context-free syntax:
// ('constructor' | 'function' | 'method') ('void' | type) subroutineName
// '(' parameterList ')' subroutineBody
//
// subroutineBody = '{' varDec* statements '}'
func (ce *CompilationEngine) CompileSubroutine() {
	// reset subroutine symbolTable
	ce.subroutineSymbolTable.ResetSymbolTable()

	// terminal keyword of constructor, function or method
	subroutineKeyword := ce.tokenizer.GetCurrentToken()
	ce.WrapperTokenizerAdvance()

	// terminal which may be a keyword or an identifier (for 'void' | type)
	ce.WrapperTokenizerAdvance()

	// subroutineName which is a terminal identifier
	subroutineName := ce.tokenizer.GetCurrentToken()
	ce.WrapperTokenizerAdvance()

	// '('
	ce.WrapperTokenizerAdvance()

	// compile parameterList
	ce.CompileParameterList(subroutineKeyword)

	// ')'
	ce.WrapperTokenizerAdvance()

	// compile subroutineBody
	ce.compileSubroutineBody(subroutineName)

	ce.vmWriter.WriteEmptyLine() // for debugging purposes
}

// compileSubroutineBody compiles a subroutine body
//
// Context-free syntax: '{' varDec* statements '}'
func (ce *CompilationEngine) compileSubroutineBody(subroutineName string) {
	// '{' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// compile varDec* (possibly being more than one)
	for ce.tokenizer.GetCurrentToken() == "var" {
		ce.CompileVarDec()
	}

	// write func within vm
	ce.vmWriter.WriteFunction(
		ce.className+"."+subroutineName,
		ce.subroutineSymbolTable.VarCount(symbol_table.VAR),
	)

	ce.CompileStatements()

	// '}' is a terminal symbol
	ce.WrapperTokenizerAdvance()
}

// CompileParameterList compiles a parameter list
//
// Context-free syntax: ((type varName) (',' type varName)*)?
func (ce *CompilationEngine) CompileParameterList(subroutineKeyword string) {
	if ce.tokenizer.GetCurrentToken() != ")" {
		varKind := symbol_table.ARGUMENT

		// If a method, the first argument is 'this' (the object to be acted on)
		if subroutineKeyword == "method" {
			varName := "this"
			ce.subroutineSymbolTable.AddEntry(varName, ce.className, varKind)

			// write to .vm
			ce.vmWriter.WritePush(vm_writer.ARGUMENT, 0)
			ce.vmWriter.WritePop(vm_writer.POINTER, 0)
		}

		// type is either a keyword or an identifier (terminal)
		varType := ce.tokenizer.GetCurrentToken()
		ce.WrapperTokenizerAdvance()

		// varName is a terminal identifier
		varName := ce.tokenizer.GetCurrentToken()
		ce.WrapperTokenizerAdvance()

		// add to subroutine symbolTable
		ce.subroutineSymbolTable.AddEntry(varName, varType, varKind)

		for ce.tokenizer.GetCurrentToken() == "," {
			// ',' symbol terminal
			ce.WrapperTokenizerAdvance()

			// type is either a keyword or an identifier (terminal)
			varType := ce.tokenizer.GetCurrentToken()
			ce.WrapperTokenizerAdvance()

			// varName is a terminal identifier
			varName := ce.tokenizer.GetCurrentToken()
			ce.WrapperTokenizerAdvance()

			// add to subroutine symbolTable
			ce.subroutineSymbolTable.AddEntry(varName, varType, varKind)
		}
	}
}

// CompileVarDec compiles a var declaration
// Content-free syntax:
// 'var' type varName (',' varName)* ';'
func (ce *CompilationEngine) CompileVarDec() {
	// 'var' is a terminal keyword
	varKind := symbol_table.VAR
	ce.WrapperTokenizerAdvance()

	// type is either a keyword or an identifier (terminal)
	varType := ce.tokenizer.GetCurrentToken()
	ce.WrapperTokenizerAdvance()

	// varName is a terminal identifier
	varName := ce.tokenizer.GetCurrentToken()
	ce.WrapperTokenizerAdvance()

	// add to subroutine symbolTable
	ce.subroutineSymbolTable.AddEntry(varName, varType, varKind)

	for ce.tokenizer.GetCurrentToken() == "," {
		// ',' symbol terminal
		ce.WrapperTokenizerAdvance()

		// varName is a terminal identifier
		varName := ce.tokenizer.GetCurrentToken()
		ce.WrapperTokenizerAdvance()

		// add to subroutine symbolTable
		ce.subroutineSymbolTable.AddEntry(varName, varType, varKind)
	}

	// ';' symbol terminal
	ce.WrapperTokenizerAdvance()
}
