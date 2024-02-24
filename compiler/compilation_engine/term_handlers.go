package compilation_engine

import (
	"log"
	"strconv"

	"github.com/PedrobyJoao/16-bit-computer/compiler/vm_writer"
)

// WriteIdentifierTerm handles an identifier term.
// Writes the necessary VM commands to handle the term.
//
// IMPORTANT: it does one look ahead. (LL(1) compiler)
func (ce *CompilationEngine) WriteIdentifierTerm() {
	nextToken, err := ce.tokenizer.DoOneLookAhead()
	if err != nil {
		log.Fatalf(
			"Failed to do one look ahead while compiling term: %s",
			err)
	}

	// varName[expression]
	if nextToken == "[" {
		// TODO: VM commands
		// varName is a terminal-identifier
		ce.WrapperTokenizerAdvance()

		// '[' is a terminal-symbol
		ce.WrapperTokenizerAdvance()

		ce.CompileExpression()

		// ']' is a terminal-symbol
		ce.WrapperTokenizerAdvance()
	} else if nextToken == "." {
		// TODO: VM commands
		// case specific subroutineCall:
		// (className | varName) '.' subroutineName '(' expressionList ')'
		ce.compileSubroutineCall()
	} else {
		// TODO: VM commands
		// Cases: `varName` | subroutineName '(' expressionList ')' |

		ce.WrapperTokenizerAdvance()
	}
}

// WriteIntConstTerm handles an integer constant term.
// Writes the necessary VM commands to handle the term
func (ce *CompilationEngine) WriteIntConstTerm() {
	num, err := strconv.Atoi(ce.tokenizer.GetCurrentToken())
	if err != nil {
		log.Fatalf("Failed to convert to int: %s", ce.tokenizer.GetCurrentToken())
	}
	ce.vmWriter.WritePush(vm_writer.CONST, num)
	ce.WrapperTokenizerAdvance()
}

// WriteKeywordConstTerm handles a keyword constant term.
// Writes the necessary VM commands to handle the term
func (ce *CompilationEngine) WriteKeywordConstTerm() {
	currentToken := ce.tokenizer.GetCurrentToken()
	if currentToken == "false" || currentToken == "null" {
		ce.vmWriter.WritePush(vm_writer.CONST, 0)
	} else if currentToken == "true" {
		ce.vmWriter.WritePush(vm_writer.CONST, 1)
		ce.vmWriter.WriteArithmetic(vm_writer.NOT)
	} else if currentToken == "this" {
		ce.vmWriter.WritePush(vm_writer.POINTER, 0)
	} else {
		log.Fatalf("Unexpected keyword constant when compiling Term: %s", currentToken)
	}
	ce.WrapperTokenizerAdvance()
}

// HandleStrConstTerm handles a string constant term. Call function
// String.new() and appendChar(), the latter multiply times if necessary.
func (ce *CompilationEngine) HandleStrConstTerm() {
	// TODO:
	ce.WrapperTokenizerAdvance()
}

// WriteExpressionTerm handles an expression term.
// Writes the necessary VM commands to handle the term
//
// Case: '(' expression ')
func (ce *CompilationEngine) WriteExpressionTerm() {
	// '(' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	ce.CompileExpression()

	// ')' is a terminal symbol
	ce.WrapperTokenizerAdvance()
}

// WriteUnaryOpTerm handles an unary operator term.
// Writes the necessary VM commands to handle the term
//
// Case: unaryOp term
func (ce *CompilationEngine) WriteUnaryOpTerm() {
	// unaryOp is a terminal symbol
	ce.WrapperTokenizerAdvance()

	ce.CompileTerm()
}
