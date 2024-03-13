package compilation_engine

import (
	"fmt"
	"github.com/PedrobyJoao/16-bit-computer/compiler/symbol_table"
)

// GetIdentifierInfo returns the identifier info. It first checks if the identifier
// is within the subroutine symbol table. If not, it checks the class symbol table.
func (ce *CompilationEngine) GetIdentifierInfo(name string) (symbol_table.IdentifierInfo, error) {
	var identifierInfo symbol_table.IdentifierInfo

	// ignore if error
	identifierInfo = ce.subroutineSymbolTable.GetIdentifierInfo(name)

	if identifierInfo != (symbol_table.IdentifierInfo{}) {
		return identifierInfo, nil
	}

	identifierInfo = ce.classSymbolTable.GetIdentifierInfo(name)

	if identifierInfo != (symbol_table.IdentifierInfo{}) {
		return identifierInfo, nil
	}

	return symbol_table.IdentifierInfo{},
		fmt.Errorf(
			"identifier %s not found\n  other classes within directory: %v",
			name, ce.allAppClasses,
		)
}
