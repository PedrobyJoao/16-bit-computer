package symbol_table

import (
	"testing"
)

func TestSymbolTable(t *testing.T) {
	// Initialize a new symbol table
	symbolTable := New()

	// Test adding entries to the symbol table
	testCases := []struct {
		name       string
		symbolType string
		kind       Kind
		wantIndex  int
		wantErr    bool
	}{
		{"x", "int", STATIC, 0, false},
		{"y", "boolean", FIELD, 0, false},
		{"z", "char", ARG, 0, false},
		{"w", "int", VAR, 0, false},
		{"x", "int", STATIC, 0, true}, // Duplicate entry, should error
	}

	for _, tc := range testCases {
		err := symbolTable.AddEntry(tc.name, tc.symbolType, tc.kind)
		if (err != nil) != tc.wantErr {
			t.Errorf("AddEntry(%q, %q, %q) error = %v, wantErr %v", tc.name, tc.symbolType, tc.kind, err, tc.wantErr)
		}
		if !tc.wantErr {
			if gotIndex := symbolTable.data[tc.name].Index; gotIndex != tc.wantIndex {
				t.Errorf("AddEntry(%q, %q, %q) got index = %v, want index %v", tc.name, tc.symbolType, tc.kind, gotIndex,
					tc.wantIndex)
			}
		}
	}

	// Test VarCount method
	varCountTestCases := []struct {
		kind      Kind
		wantCount int
	}{
		{STATIC, 1},
		{FIELD, 1},
		{ARG, 1},
		{VAR, 1},
	}

	for _, tc := range varCountTestCases {
		if gotCount := symbolTable.VarCount(tc.kind); gotCount != tc.wantCount {
			t.Errorf("VarCount(%q) got count = %v, want count %v", tc.kind, gotCount, tc.wantCount)
		}
	}

	// Test GetKindOf method
	if gotKind, _ := symbolTable.GetKindOf("x"); gotKind != STATIC {
		t.Errorf("GetKindOf(\"x\") got kind = %v, want kind %v", gotKind, STATIC)
	}

	// Test GetTypeOf method
	if gotType, _ := symbolTable.GetTypeOf("y"); gotType != "boolean" {
		t.Errorf("GetTypeOf(\"y\") got type = %v, want type %v", gotType, "boolean")
	}

	// Test GetIndexOf method
	if gotIndex, _ := symbolTable.GetIndexOf("z"); gotIndex != 0 {
		t.Errorf("GetIndexOf(\"z\") got index = %v, want index %v", gotIndex, 0)
	}

	// Test error cases for GetKindOf, GetTypeOf, and GetIndexOf methods
	_, err := symbolTable.GetKindOf("nonexistent")
	if err == nil {
		t.Error("GetKindOf(\"nonexistent\") expected error, got nil")
	}

	_, err = symbolTable.GetTypeOf("nonexistent")
	if err == nil {
		t.Error("GetTypeOf(\"nonexistent\") expected error, got nil")
	}

	_, err = symbolTable.GetIndexOf("nonexistent")
	if err == nil {
		t.Error("GetIndexOf(\"nonexistent\") expected error, got nil")
	}

	// Test ResetSymbolTable method
	symbolTable.ResetSymbolTable()

	// Check if the data map is empty
	if len(symbolTable.data) != 0 {
		t.Errorf("ResetSymbolTable() did not clear the data map, got %v", symbolTable.data)
	}

	// Check if the IndexTable map is empty
	if len(symbolTable.IndexTable) != 0 {
		t.Errorf("ResetSymbolTable() did not clear the IndexTable map, got %v", symbolTable.IndexTable)
	}
}
