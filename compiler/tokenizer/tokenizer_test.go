package tokenizer

import (
	"reflect"
	"testing"
)

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
				t.Errorf("splitStringBySymbol() = %v, want %v", got, tt.want)
			}
		})
	}
}
