package compilation_engine

import (
	"log"

	"github.com/PedrobyJoao/16-bit-computer/compiler/symbol_table"
	"github.com/PedrobyJoao/16-bit-computer/compiler/tokenizer"
	"github.com/PedrobyJoao/16-bit-computer/compiler/vm_writer"
)

// isOp returns true if the current token is an operator
func isOp(token string) bool {
	op := map[string]bool{
		"+": true,
		"-": true,
		"*": true,
		"/": true,
		"&": true,
		"|": true,
		"<": true,
		">": true,
		"=": true,
	}

	if _, ok := op[token]; ok {
		return true
	}
	return false
}

// WriteOpVMCommand writes the VM command for an arithmetic operation
// based on the given operator
func (ce *CompilationEngine) WriteOpVMCommand(op string) {
	switch op {
	case "+":
		ce.vmWriter.WriteArithmetic(vm_writer.ADD)
	case "-":
		ce.vmWriter.WriteArithmetic(vm_writer.SUB)
	case "&":
		ce.vmWriter.WriteArithmetic(vm_writer.AND)
	case "|":
		ce.vmWriter.WriteArithmetic(vm_writer.OR)
	case "<":
		ce.vmWriter.WriteArithmetic(vm_writer.LT)
	case ">":
		ce.vmWriter.WriteArithmetic(vm_writer.GT)
	case "=":
		ce.vmWriter.WriteArithmetic(vm_writer.EQ)
	case "*":
		ce.vmWriter.WriteCall("Math.multiply", 2)
	case "/":
		ce.vmWriter.WriteCall("Math.divide", 2)
	}
}

// CompileExpression compiles an expression
// Content-free syntax:
// term (op term)*
func (ce *CompilationEngine) CompileExpression() {
	ce.CompileTerm()

	for isOp(ce.tokenizer.GetCurrentToken()) {
		// op is a terminal-symbol
		op := ce.tokenizer.GetCurrentToken()
		ce.WrapperTokenizerAdvance()

		ce.CompileTerm()

		ce.WriteOpVMCommand(op)
	}
}

// CompileTerm compiles a term
// Note: it's NOT a terminal!
// Content-free syntax:
// integerConstant | stringConstant | keywordConstant | varName |
// varName '[' expression ']' | subroutineCall | '(' expression ')' |
// unaryOp term
func (ce *CompilationEngine) CompileTerm() {
	if ce.tokenizer.GetTokenType() == tokenizer.Identifier {
		ce.WriteIdentifierTerm()
		// ce.WrapperTokenizerAdvance() will be called within the above handler function
	} else if ce.tokenizer.GetTokenType() == tokenizer.IntConstant {
		ce.WriteIntConstTerm()

	} else if ce.tokenizer.GetTokenType() == tokenizer.StrConstant {
		ce.HandleStrConstTerm()

	} else if ce.tokenizer.GetTokenType() == tokenizer.Keyword {
		ce.WriteKeywordConstTerm()

	} else if ce.tokenizer.GetCurrentToken() == "(" {
		ce.WriteExpressionTerm()
	} else if ce.tokenizer.GetCurrentToken() == "-" || ce.tokenizer.GetCurrentToken() == "~" {
		ce.WriteUnaryOpTerm()
	}
}

func (ce *CompilationEngine) pushVMVar(identifierInfo symbol_table.IdentifierInfo) {
	if identifierInfo.Kind == symbol_table.VAR {
		ce.vmWriter.WritePush(vm_writer.LOCAL, identifierInfo.Index)
	} else if identifierInfo.Kind == symbol_table.ARGUMENT {
		ce.vmWriter.WritePush(vm_writer.ARGUMENT, identifierInfo.Index)
	} else if identifierInfo.Kind == symbol_table.STATIC {
		ce.vmWriter.WritePush(vm_writer.STATIC, identifierInfo.Index)
	} else if identifierInfo.Kind == symbol_table.FIELD {
		ce.vmWriter.WritePush(vm_writer.THIS, identifierInfo.Index)
	}
}

// CompileExpressionList compiles an expression list.
//
// VM: It pushes the args for the being called function
//
// Content-free syntax:
// (expression (',' expression)*)?
func (ce *CompilationEngine) CompileExpressionList() int {
	var expressionCount int
	if ce.tokenizer.GetCurrentToken() != ")" {
		ce.CompileExpression()
		expressionCount += 1

		for ce.tokenizer.GetCurrentToken() == "," {
			// print out ',' symbol terminal
			ce.WrapperTokenizerAdvance()

			ce.CompileExpression()
			expressionCount += 1
		}

	}
	return expressionCount
}

// compileSubroutineCall compiles a subroutine call, it's a non-terminal.
//
// Content-free syntax:
// subroutineName '(' expressionList ')' | (className | varName) '.' subroutineName '(' expressionList ')'
func (ce *CompilationEngine) compileSubroutineCall(hasReturn bool) {
	var subroutineNoun string
	var subroutinePredicate string
	var identifierInfo symbol_table.IdentifierInfo

	// subroutineName, className or varName are all identifiers-terminals
	subroutineNoun = ce.tokenizer.GetCurrentToken()
	ce.WrapperTokenizerAdvance()

	// case it's a method
	if ce.tokenizer.GetCurrentToken() == "." {
		// '.' is a terminal symbol
		ce.WrapperTokenizerAdvance()

		// subroutineName is a terminal-identifier
		subroutinePredicate = ce.tokenizer.GetCurrentToken()
		ce.WrapperTokenizerAdvance()

		// write object as first arg to the being called subroutine
		var err error

		identifierInfo, err = ce.GetIdentifierInfo(subroutineNoun)
		if err != nil {
			// it's just an error if the subroutine doesn't exist either on the
			// symbol tables or other classes within the code repository
			if _, ok := ce.allAppClasses[subroutineNoun]; !ok {
				ce.subroutineSymbolTable.ShowSymbolTable("subroutine")
				ce.classSymbolTable.ShowSymbolTable("class")
				log.Fatalf(
					"Error getting identifier info: %s\n Class: %s | subroutine: %s",
					err, ce.className, subroutineNoun+"."+subroutinePredicate)
			}
		}

		if subroutinePredicate != "new" {
			ce.pushVMVar(identifierInfo)
		}
	}

	// '(' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	numArgs := ce.CompileExpressionList()

	// ')' is a terminal symbol
	ce.WrapperTokenizerAdvance()

	// VM call subroutine
	if subroutinePredicate != "" {
		if _, ok := ce.allAppClasses[subroutineNoun]; !ok {
			ce.vmWriter.WriteCall(identifierInfo.Type+"."+subroutinePredicate, numArgs)
		} else {
			ce.vmWriter.WriteCall(subroutineNoun+"."+subroutinePredicate, numArgs)
		}
	} else {
		ce.vmWriter.WriteCall(subroutineNoun, numArgs)
	}

	// if there is no return, ignore last pushed value return value
	if !hasReturn {
		ce.vmWriter.WritePop(vm_writer.TEMP, 0)
	}
}
