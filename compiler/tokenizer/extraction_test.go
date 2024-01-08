package tokenizer

import (
	"reflect"
	"testing"
)

func TestExtractTokensFromSlice(t *testing.T) {
	// Reminder: strings separated by whitespaces
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
			name:  "let x = \"string constant testing\";",
			input: []string{"let", "x", "=", "\"string", "constant", "testing\";"},
			want:  []string{"let", "x", "=", "\"string constant testing\"", ";"},
		},
		{
			name:  "string constant with prefixed symbol",
			input: []string{"let", "length", "=", "Keyboard.readInt(\"HOW", "MANY", "NUMBERS?", " \");"},
			want:  []string{"let", "length", "=", "Keyboard", ".", "readInt", "(", "\"HOW MANY NUMBERS? \"", ")", ";"},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := extractTokensFromSlice(tt.input)
			if len(got) != len(tt.want) {
				t.Errorf("\nLen() is different\noutput = %v\n want = %v", got, tt.want)
			} else {
				for i := range got {
					if got[i] != tt.want[i] {
						t.Errorf("\noutput[%v] = %q\n want[%v] = %q", i, got[i], i, tt.want[i])
					}
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
			name: "testing count++;",
			s:    "count++;",
			want: []string{"count", "++", ";"},
		},
		{
			name: "testing ;",
			s:    ";",
			want: []string{";"},
		},
		{
			name: "testing '~exit'",
			s:    "~exit",
			want: []string{"~", "exit"},
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
