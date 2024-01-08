package tokenizer

import (
	"strings"

	"github.com/PedrobyJoao/16-bit-computer/compiler/utils"
)

// extractTokensFromSlice gets a non-formatted slice of strings that were
// splitted by whitespaces. We therefore have three cases:
// 1. some final tokens
// 2. tokens coupled with symbols ("counter++;" contains 3 tokens)
// 3. StringConstant tokens coupled with '"' but we will maintain the quotes
// anyway so that we can later identify the token
// Example:
// input: ["func", "test(int", "a,", "int", "b){"]
// output: ["func", "test", "(", "int", "a", ",", "int", "b", ")", "{"]
// Example (string constants):
// input: ["let", "x", "=", ""string", "with", "whitespaces";"]
// output: ["let", "x", "=", ""string with whitespaces"", ";"]
// Note: there might be symbols after the end of a string constant
func extractTokensFromSlice(unformattedTokens []string) []string {
	var tokens []string
	var strConstToken string
	handlingStrConstant := false

	for _, s := range unformattedTokens {
		if strings.Contains(s, `"`) {
			if !handlingStrConstant {

				// Handling string before first quotes if any
				quoteIndices := utils.FindRuneIndices(s, '"')
				if quoteIndices[0] > 0 {
					tokens = append(tokens, splitStringBySymbol(s[0:quoteIndices[0]])...)
				}

				// Handling string constant itself until the next quotes if any
				// or until the end of the string
				if len(quoteIndices) == 1 {
					strConstToken = strConstToken + s[quoteIndices[0]:] + " "
				} else {
					// Handling case where there are two quotes in the string,
					// and therefore the entire string constant
					strConstToken = strConstToken + s[quoteIndices[0]+1:quoteIndices[1]]
					tokens = append(tokens, strConstToken)
					handlingStrConstant = false

					// checking if there is anything else after the last quotes
					if quoteIndices[1]+1 < len(s) {
						tokens = append(tokens, splitStringBySymbol(s[quoteIndices[1]+1:])...)
					}
				}

				handlingStrConstant = true
				continue

			} else {
				// already handling string constant

				// Note: for some strange reason, even though the string `s` is a result
				// of splitting by whitespaces, there is a whitespace is some cases
				// (e.g.: on the case of `("HOW MANY NUMBERS? ")`
				// So let's remove all spaces from the string
				s = strings.ReplaceAll(s, " ", "")

				// checking if there is anything after string constant as in: `end"));`
				quoteIdx := strings.Index(s, `"`)

				if quoteIdx+1 < len(s) {
					strConstToken = strConstToken + s[:quoteIdx+1]
					tokens = append(tokens, strConstToken)
					// handle things after string constant
					tokens = append(tokens, splitStringBySymbol(s[quoteIdx+1:])...)

				} else {
					strConstToken = strConstToken + s
					tokens = append(tokens, strConstToken)
				}
				handlingStrConstant = false
			}
		} else if handlingStrConstant {
			// handling string between quote
			strConstToken = strConstToken + s + " "
		} else {
			// All other cases not being string constants
			tokens = append(tokens, splitStringBySymbol(s)...)
		}
	}
	return tokens
}

// handleStringConstant handles string constant tokens which are coupled with
// quotes `"`. Let's analyze the possible cases:
// "string" -> ["string"]
// "string with whitespaces" -> ["string with whitespaces"]
// read.Int("string") -> [read, ., Int, (, "string", )]

// splitStringBySymbol splits a string based on Hack symbols (an lexical
// element), maintaining the symbol on the list. The result is a list of tokens.
// Examples:
// "class.method" -> ["class", ".", "method"]
// "+num" -> [+, num]
// "x>=10" -> [x, >=, 10]
// ++; -> [++, ;]
// Note: stringConstant will continue with '"' quotes until being analyzed
func splitStringBySymbol(s string) []string {
	// symbols unicode:
	// 38, 40-47, 59-62, 91, 93, 123-126
	var separatedStrings []string
	var nonSymbol string
	var skipNextChar bool

	for i, char := range s {
		// symbols
		if char == 38 ||
			char >= 40 && char <= 47 ||
			char >= 59 && char <= 62 ||
			char == 91 || char == 93 ||
			char == 123 || char == 125 || char == 126 {

			if nonSymbol != "" {
				separatedStrings = append(separatedStrings, nonSymbol)
				nonSymbol = ""
			}

			if skipNextChar {
				skipNextChar = false
				continue
			}

			// duplicated symbols case
			if i < len(s)-1 {
				currentNextChar := string(char) + string(s[i+1])
				if _, ok := doubleSymbolMap[currentNextChar]; ok {
					separatedStrings = append(separatedStrings, currentNextChar)
					skipNextChar = true
					continue
				}
			}

			// normal case
			separatedStrings = append(separatedStrings, string(char))
		} else {
			nonSymbol += string(char)
			if i == len(s)-1 {
				separatedStrings = append(separatedStrings, nonSymbol)
			}
		}
	}

	return separatedStrings
}
