package compilation_engine

import (
	"log"
	"strconv"

	"github.com/PedrobyJoao/16-bit-computer/compiler/symbol_table"
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
		ce.compileSubroutineCall(true)
	} else {
		// TODO: VM commands
		// Cases: `varName` | subroutineName '(' expressionList ')' |
		identifierInfo, err := ce.GetIdentifierInfo(ce.tokenizer.GetCurrentToken())
		if err != nil {
			log.Fatalf("Failed to get identifier info: %s", err)
		}

		if identifierInfo.Kind == symbol_table.VAR {
			ce.vmWriter.WritePush(vm_writer.LOCAL, identifierInfo.Index)
		} else if identifierInfo.Kind == symbol_table.ARGUMENT {
			ce.vmWriter.WritePush(vm_writer.ARGUMENT, identifierInfo.Index)
		} else if identifierInfo.Kind == symbol_table.STATIC {
			ce.vmWriter.WritePush(vm_writer.STATIC, identifierInfo.Index)
		} else if identifierInfo.Kind == symbol_table.FIELD {
			ce.vmWriter.WritePush(vm_writer.THIS, identifierInfo.Index)
		}

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
		ce.vmWriter.WriteArithmetic(vm_writer.NEG)
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
	unaryOp := ce.tokenizer.GetCurrentToken()
	ce.WrapperTokenizerAdvance()

	ce.CompileTerm()

	if unaryOp == "-" {
		ce.vmWriter.WriteArithmetic(vm_writer.NEG)
	} else if unaryOp == "~" {
		ce.vmWriter.WriteArithmetic(vm_writer.NOT)
	}
}
