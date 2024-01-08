package utils

// findRuneIndices returns a slice of indices where the specified rune is found in the input string.
func findRuneIndices(input string, matchRune rune) []int {
	var indices []int
	for i, r := range input {
		if r == matchRune {
			indices = append(indices, i)
		}
	}
	return indices
}
