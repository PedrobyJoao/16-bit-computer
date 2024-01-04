package tokenizer

import (
	"log"
	"strings"
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
		if s[0] == '"' && !handlingStrConstant {
			// first quotes, starting a string constant
			log.Printf(
				"starting handled string constant. Current string: %v and current strConst: %v",
				s, strConstToken,
			)
			strConstToken = strConstToken + s + " "
			handlingStrConstant = true

		} else if strings.Contains(s, `"`) && handlingStrConstant {
			// last quotes, ending a string constant
			log.Printf(
				"ending handled string constant. Current string: %v and current strConst: %v",
				s, strConstToken,
			)

			// checking if there is anything after string constant as in: `end"));`
			quoteIdx := strings.Index(s, `"`)
			log.Printf("quoteIdx: %v and s: %v, len(s): %v", quoteIdx, s, len(s))
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
