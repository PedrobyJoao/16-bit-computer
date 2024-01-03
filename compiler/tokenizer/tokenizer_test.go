package tokenizer

import (
	"reflect"
	"testing"
)

func TestExtractTokensFromSlice(t *testing.T) {
	tests := []struct {
		name  string
		input []string
		want  []string
	}{
		{
			name:  "func test(int a, int b){",
			input: []string{"func", "test(int", "a,", "int", "b){"},
			want:  []string{"func", "test", "(", "int", "a", ",", "int", "b", ")", "{"},
		},
		{
			name:  "for (int i = 0; i<=10; i++) {",
			input: []string{"for", "(int", "i", "=", "0;", "i<=10;", "i++)", "{"},
			want:  []string{"for", "(", "int", "i", "=", "0", ";", "i", "<=", "10", ";", "i", "++", ")", "{"},
		},
		{
			name:  "let x = \"string constant testing\"",
			input: []string{"let", "x", "=", "\"string", "constant", "testing\""},
			want:  []string{"let", "x", "=", "\"string constant testing\""},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := extractTokensFromSlice(tt.input); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("\noutput = %v\n want = %v", got, tt.want)
				if len(got) != len(tt.want) {
					t.Logf("\nlen(output) = %v and len(expected) = %v", len(got), len(tt.want))
				}
			}
		})
	}
}

func TestSplitStringBySymbol(t *testing.T) {
	tests := []struct {
		name string
		s    string
		want []string
	}{
		{
			name: "math.method",
			s:    "math.method",
			want: []string{"math", ".", "method"},
		},
		{
			name: "function(param)",
			s:    "function(param)",
			want: []string{"function", "(", "param", ")"},
		},
		{
			name: "array[index];",
			s:    "array[index];",
			want: []string{"array", "[", "index", "]", ";"},
		},
		{
			name: "Test #4",
			s:    "count++;",
			want: []string{"count", "++", ";"},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := splitStringBySymbol(tt.s)
			if !reflect.DeepEqual(got, tt.want) {
				t.Errorf("\noutput = %v\n want %v", got, tt.want)
			}
		})
	}
}
