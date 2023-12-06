package symbol_table

import (
	"log"
)

type SymbolTable struct {
	lastEntryLine int
	Table         map[string]int
}

func NewSymbolTable() *SymbolTable {
	return &SymbolTable{
		lastEntryLine: 0,
		Table: map[string]int{
			"SP":   0,
			"LCL":  1,
			"ARG":  2,
			"THIS": 3,
			"THAT": 4,

			// R's
			"R0":  0,
			"R1":  1,
			"R2":  2,
			"R3":  3,
			"R4":  4,
			"R5":  5,
			"R6":  6,
			"R7":  7,
			"R8":  8,
			"R9":  9,
			"R10": 10,
			"R11": 11,
			"R12": 12,
			"R13": 13,
			"R14": 14,
			"R15": 15,

			// I/O
			"SCREEN": 16384,
			"KBD":    24576,
		},
	}
}

func (s *SymbolTable) AddLabelSymbolEntry(entry string, n int) {
	if _, ok := s.Table[entry]; !ok {
		s.Table[entry] = n
	}
}

func (s *SymbolTable) AddNewSymbolEntry(entry string) {
	if _, ok := s.Table[entry]; !ok {
		s.Table[entry] = 16 + s.lastEntryLine
		s.lastEntryLine += 1
		log.Printf("Inserting NEW symbol to table, Symbol: %v, Int: %v",
			entry, s.Table[entry])
	}
}
