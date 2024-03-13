package compilation_engine

import (
	"fmt"
	"log"

	"github.com/PedrobyJoao/16-bit-computer/compiler/symbol_table"
	"github.com/PedrobyJoao/16-bit-computer/compiler/vm_writer"
)

// CompileStatements compiles a sequence of statements not including '{' or '}'
// Content-free syntax:
// statement*
func (ce *CompilationEngine) CompileStatements() {
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
}

// CompileDo compiles a do statement
// Content-free syntax:
// 'do' subroutineCall ';'
func (ce *CompilationEngine) CompileDo() {
	// 'do' is a terminal keyword
	ce.WrapperTokenizerAdvance()

	// subroutineCall is a non-terminal
	ce.compileSubroutineCall(false)

	// ';' is a terminal symbol
	ce.WrapperTokenizerAdvance()
}

// CompileLet compiles a let statement
// Context-free syntax:
// 'let' varName ('[' expression ']')? '=' expression ';'
func (ce *CompilationEngine) CompileLet() {
	var isArray bool

	// 'let' is a terminal keyword
	ce.WrapperTokenizerAdvance()

	// varName is a terminal identifier
	varName := ce.tokenizer.GetCurrentToken()
	ce.WrapperTokenizerAdvance()

	// write value of compiled expression to varName
	varInfo, err := ce.GetIdentifierInfo(varName)
	if err != nil {
		ce.subroutineSymbolTable.ShowSymbolTable("subroutine")
		ce.classSymbolTable.ShowSymbolTable("class")
		log.Fatalf(
			"Error getting identifier info: %s\n Class: %s | var: %s",
			err, ce.className, varName,
		)
	}

	if ce.tokenizer.GetCurrentToken() == "[" {
		isArray = true
		// '[' is a terminal symbol
		ce.WrapperTokenizerAdvance()

		// expression is a non-terminal
		ce.CompileExpression()
		// last pushed value should be an int for the array idx
		// add array base memory + idx
		ce.pushVMVar(varInfo) // pushes the array base memory
		ce.vmWriter.WriteArithmetic(vm_writer.ADD)

		// ']' is a terminal symbol
		ce.WrapperTokenizerAdvance()
	}

	// '=' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// expression is a non-terminal
	ce.CompileExpression()

	// ';' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	if isArray {
		// get result from temp (as suggested)
		ce.vmWriter.WritePop(vm_writer.TEMP, 0)
		ce.vmWriter.WritePop(vm_writer.POINTER, 1)
		ce.vmWriter.WritePush(vm_writer.TEMP, 0)
		ce.vmWriter.WritePop(vm_writer.THAT, 0)
		return
	}

	if varInfo.Kind == symbol_table.VAR {
		ce.vmWriter.WritePop(vm_writer.LOCAL, varInfo.Index)
	} else if varInfo.Kind == symbol_table.ARGUMENT {
		ce.vmWriter.WritePop(vm_writer.ARGUMENT, varInfo.Index)
	} else if varInfo.Kind == symbol_table.STATIC {
		ce.vmWriter.WritePop(vm_writer.STATIC, varInfo.Index)
	} else if varInfo.Kind == symbol_table.FIELD {
		ce.vmWriter.WritePop(vm_writer.THIS, varInfo.Index)
	}
}

// CompileWhile compiles a while statement
// Context-free syntax:
// 'while' '(' expression ')' '{' statements '}'
func (ce *CompilationEngine) CompileWhile() {
	// 'while' is a terminal keyword
	ce.WrapperTokenizerAdvance()

	// '(' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// setting labels
	while_loop := ce.generateNewLabel()
	while_exit := ce.generateNewLabel()
	ce.vmWriter.WriteLabel(while_loop)

	// expression is a non-terminal
	ce.CompileExpression()

	// negate and evaluate negated expression and if-goto based on it
	// why negate it? Just to make the if-goto process simples
	// TODO: NOT or NEG?
	ce.vmWriter.WriteArithmetic(vm_writer.NOT)
	ce.vmWriter.WriteIfGoto(while_exit)

	// ')' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// '{' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// statements is a non-terminal
	ce.CompileStatements()

	// '}' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// while exit
	ce.vmWriter.WriteGoto(while_loop)
	ce.vmWriter.WriteLabel(while_exit)
}

// CompileReturn compiles a return statement
// Context-free syntax:
// 'return' expression? ';'
func (ce *CompilationEngine) CompileReturn() {
	// 'return' is a terminal keyword
	ce.WrapperTokenizerAdvance()

	if ce.tokenizer.GetCurrentToken() != ";" {
		// expression is a non-terminal
		ce.CompileExpression()
	} else {
		ce.vmWriter.WritePush(vm_writer.CONST, 0)
	}

	// ';' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	ce.vmWriter.WriteReturn()
}

// CompileIf compiles an if statement, possibly with a trailling else clause
// Content-free syntax:
// 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}')?
func (ce *CompilationEngine) CompileIf() {
	// 'if' is a terminal keyword
	ce.WrapperTokenizerAdvance()

	// '(' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// setting labels
	L1 := ce.generateNewLabel()
	L2 := ce.generateNewLabel()

	// expression is a non-terminal
	ce.CompileExpression()

	// negate expression
	// why negate it? Just to make the if-goto process simples
	ce.vmWriter.WriteArithmetic(vm_writer.NOT)

	// if-goto L1
	ce.vmWriter.WriteIfGoto(L1)

	// ')' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// '{' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// statements is a non-terminal
	ce.CompileStatements()

	// '}' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// goto L2
	ce.vmWriter.WriteGoto(L2)

	// L1
	ce.vmWriter.WriteLabel(L1)

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

	ce.vmWriter.WriteLabel(L2)
}

// generateNewLabel generates a new label
func (ce *CompilationEngine) generateNewLabel() string {
	label := "label" + "_" + fmt.Sprint(ce.labelCounter)
	ce.labelCounter++
	return label
}
