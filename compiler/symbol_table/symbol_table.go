package symbol_table

import (
	"fmt"
)

type Kind string

const (
	STATIC   Kind = "static"
	FIELD    Kind = "field"
	ARGUMENT Kind = "argument"
	VAR      Kind = "var"
)

type SymbolTable struct {
	// data is the symbol table itself
	data map[string]IdentifierInfo

	// indexTable contains information about Index assignments.
	// Example:
	// indexTable["static"] will return the higher index assigned to static variables
	IndexTable map[Kind]int
}

type IdentifierInfo struct {
	Type  string
	Kind  Kind
	Index int
}

// New creates a new symbol table
func New() *SymbolTable {
	return &SymbolTable{
		data:       make(map[string]IdentifierInfo),
		IndexTable: make(map[Kind]int),
	}
}

// AddEntry adds an identifier to the symbol table given its name, type and kind
// The function is also responsible for assigning an index to the entry
func (s *SymbolTable) AddEntry(name, symbolType string, kind Kind) error {
	if _, ok := s.data[name]; ok {
		return fmt.Errorf(
			"identifier %s already declared within scope.\n Table symbol: %v",
			name, s.data)
	}

	var index int
	if currentIndex, ok := s.IndexTable[kind]; ok {
		index = currentIndex + 1
	} else {
		index = 0
	}
	s.IndexTable[kind] = index

	s.data[name] = IdentifierInfo{
		Type:  symbolType,
		Kind:  kind,
		Index: index,
	}

	return nil
}

// VarCount returns the number of variables of the given kind
func (s *SymbolTable) VarCount(kind Kind) int {
	if index, ok := s.IndexTable[kind]; ok {
		return index + 1
	}
	return 0
}

// GetKindOf returns the kind of the named identifier in the current scope
func (s *SymbolTable) GetKindOf(name string) (Kind, error) {
	if info, ok := s.data[name]; ok {
		return info.Kind, nil
	}

	return "", fmt.Errorf(
		"identifier %s not declared within scope.\n Table symbol: %v",
		name, s.data)
}

// GetTypeOf returns the type of the named identifier in the current scope
func (s *SymbolTable) GetTypeOf(name string) (string, error) {
	if info, ok := s.data[name]; ok {
		return info.Type, nil
	}

	return "", fmt.Errorf(
		"identifier %s not declared within scope.\n Table symbol: %v",
		name, s.data)
}

// GetIndexOf returns the index assigned to the named identifier
func (s *SymbolTable) GetIndexOf(name string) (int, error) {
	if info, ok := s.data[name]; ok {
		return info.Index, nil
	}

	return 0, fmt.Errorf(
		"identifier %s not declared within scope.\n Table symbol: %v",
		name, s.data)
}

// GetIdentifierInfo returns the identifier info
func (s *SymbolTable) GetIdentifierInfo(name string) (IdentifierInfo, error) {
	if info, ok := s.data[name]; ok {
		return info, nil
	}

	return IdentifierInfo{}, fmt.Errorf(
		"identifier %s not declared within scope.\n Table symbol: %v",
		name, s.data)
}

// ResetSymbolTable will reset both the data and indexTable. It'll be mainly used
// by subroutines management
func (s *SymbolTable) ResetSymbolTable() {
	s.data = make(map[string]IdentifierInfo)
	s.IndexTable = make(map[Kind]int)
}
