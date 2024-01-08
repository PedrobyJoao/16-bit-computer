package utils

import (
	"testing"
)

// TestFindRuneIndices tests the findRuneIndices function with different scenarios.
func TestFindRuneIndices(t *testing.T) {
	tests := []struct {
		name        string
		input       string
		matchRune   rune
		wantIndices []int
	}{
		{
			name:        "No matches",
			input:       "Hello, world!",
			matchRune:   '"',
			wantIndices: []int{},
		},
		{
			name:        "One match",
			input:       "This is a quote: \"",
			matchRune:   '"',
			wantIndices: []int{17},
		},
		{
			name:        "Two matches",
			input:       "Quote: \"Hi\"",
			matchRune:   '"',
			wantIndices: []int{7, 10},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			gotIndices := findRuneIndices(tt.input, tt.matchRune)
			if len(gotIndices) != len(tt.wantIndices) {
				t.Errorf("findRuneIndices() returned %d indices, want %d", len(gotIndices), len(tt.wantIndices))
			}
			for i, gotIdx := range gotIndices {
				if gotIdx != tt.wantIndices[i] {
					t.Errorf("findRuneIndices() returned %v at index %d, want %v", gotIndices, i, tt.wantIndices)
				}
			}
		})
	}
}
