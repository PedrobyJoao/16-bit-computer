package tokenizer

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
	"unicode"
)

/*
How to identify tokens within a string with ou without spaces?

So the catch is: on the jack source code, adjacent tokens without
a space will only be the case when one of the tokens is a symbol (
i.e.: + ) { ; )

General cases:
(counter
counter)
(counter=>

'"' is not a symbol but is not separated with whitespaces, so we
have to consider this also. E.g.:
"counter"

Double symbols:
++ // should be treated as one token (two adjacent tokens)
<= // should be treated as one token (two adjacent tokens)

So how will we deal with?
When a symbol is encountered, we tokenize it and then consider the next token
to be extandable until the next symbol/space/newline!
For double symbol cases, it depends, not all symbols can fall in this case as in:
;;
{}
()
..
Therefore, for now, let's build a map of known possible double symbols
*/

var doubleSymbolMap = map[string]bool{
	"++": true,
	"--": true,
	"==": true,
	">=": true,
	"<=": true,
	"||": true,
	"&&": true,
}

var keywordMap = map[string]bool{
	"class":       true,
	"constructor": true,
	"function":    true,
	"method":      true,
	"field":       true,
	"static":      true,
	"var":         true,
	"int":         true,
	"char":        true,
	"boolean":     true,
	"void":        true,
	"true":        true,
	"false":       true,
	"null":        true,
	"this":        true,
	"let":         true,
	"do":          true,
	"if":          true,
	"else":        true,
	"while":       true,
	"return":      true,
}

type TokenType string

const (
	Keyword     TokenType = "keyword"
	Symbol      TokenType = "symbol"
	Identifier  TokenType = "identifier"
	IntConstant TokenType = "integerConstant"
	StrConstant TokenType = "stringConstant"
)

type Tokenizer struct {
	reader       *bufio.Reader
	currentToken string

	// TODO: another data structure such as doubly-linked list or Array, rather than slice
	// for tokens
	fileTokens      []string
	currentTokenIdx int
}

func NewTokenizer(filePath string) (*Tokenizer, error) {
	if !strings.HasSuffix(filePath, ".jack") {
		return nil, fmt.Errorf(
			"The provided file must have a .jack extension, file path: %v",
			filePath)
	}

	file, err := os.Open(filePath)
	if err != nil {
		return nil, fmt.Errorf("Failed to open file: %s", err)
	}
	r := bufio.NewReader(file)

	return &Tokenizer{
		reader:          r,
		fileTokens:      []string{},
		currentTokenIdx: 0,
	}, nil
}

// GetCurrentToken returns the current token
func (t *Tokenizer) GetCurrentToken() string {
	return t.currentToken
}

// extractTokensFromNextLine
func (t *Tokenizer) extractTokensFromNextLine() ([]string, error) {
	line, err := t.reader.ReadString('\n')
	if err != nil {
		if err == io.EOF {
			return []string{}, io.EOF
		}
		return []string{}, fmt.Errorf("Failed to read line: %s", err)
	}

	// ignoring leading and trailing whitespaces
	line = strings.TrimSpace(line)
	if len(line) == 0 {
		return []string{}, nil
	}

	// Check if it's a commented line
	if (len(line) >= 2 && line[:2] == "//") ||
		(len(line) >= 3 && line[:3] == "/**") {
		return []string{}, nil
	}

	// Remove inline comments
	if commentPos := strings.Index(line, "//"); commentPos != -1 {
		line = line[:commentPos]
	}

	tokens := extractTokensFromSlice(strings.Fields(line))

	return tokens, nil
}

// extractTokensFromSlice gets a non-formatted slice of strings that were
// splitted by whitespaces. We therefore have three cases:
// 1. some final tokens
// 2. tokens coupled with symbols ("counter++;" contains 3 tokens)
// 3. StringConstant tokens coupled with '"' but we will maintain the quotes
// anyway so that we can later identify the token
// Example:
// input: ["func", "test(int", "a,", "int", "b){"]
// output: ["func", "test", "(", "int", "a", ",", "int", "b", ")", "{"]
func extractTokensFromSlice(unformattedTokens []string) []string {
	var tokens []string

	for _, s := range unformattedTokens {
		tokens = append(tokens, splitStringBySymbol(s)...)
		// TODO: handle string constants correct
		// not working example: "string with whitespaces"
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
		if char == 38 ||
			char >= 40 && char <= 47 ||
			char >= 59 && char <= 62 ||
			char == 91 || char == 93 ||
			char == 123 || char == 125 {

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

// Advance reads the next piece of text from the file
func (t *Tokenizer) Advance() (bool, error) {
	if len(t.fileTokens) == 0 ||
		t.currentTokenIdx >= len(t.fileTokens)-1 {
		tokens, err := t.extractTokensFromNextLine()
		if err != nil {
			return false, err
		}

		if len(tokens) == 0 {
			return false, nil
		}

		if len(t.fileTokens) == 0 {
			t.currentTokenIdx = 0
		} else {
			t.currentTokenIdx++
		}

		t.fileTokens = append(t.fileTokens, tokens...)
	} else {
		t.currentTokenIdx++
	}

	t.currentToken = t.fileTokens[t.currentTokenIdx]
	return true, nil
}

// GetTokenType returns the token type
func (t *Tokenizer) GetTokenType() TokenType {
	if unicode.IsDigit(rune(t.currentToken[0])) {
		return IntConstant
	} else if t.currentToken[0] == '"' {
		return StrConstant
	} else if _, ok := keywordMap[t.currentToken]; ok {
		return Keyword
	} else if unicode.IsLetter(rune(t.currentToken[0])) || t.currentToken[0] == '_' {
		return Identifier
	} else {
		return Symbol
	}
}

// GetKeyword returns the keyword if keyword
func (t *Tokenizer) GetKeyword() (string, error) {
	if t.GetTokenType() == Keyword {
		return t.currentToken, nil
	}
	return "", fmt.Errorf("Not a keyword: %s", t.currentToken)
}

// GetSymbol returns the symbol if symbol
func (t *Tokenizer) GetSymbol() (string, error) {
	if t.GetTokenType() == Symbol {
		return t.currentToken, nil
	}
	return "", fmt.Errorf("Not a symbol: %s", t.currentToken)
}

// GetStringVal returns the string constant if string constant, removing
// the quotes from the original string
func (t *Tokenizer) GetStringVal() (string, error) {
	if t.GetTokenType() == StrConstant {
		return t.currentToken[1 : len(t.currentToken)-1], nil
	}
	return "", fmt.Errorf("Not an string constant: %s", t.currentToken)
}

// GetIntVal returns the intVal if intVal
func (t *Tokenizer) GetIntVal() (int, error) {
	if t.GetTokenType() == IntConstant {
		intVal, err := strconv.Atoi(t.currentToken)
		if err != nil {
			return 0, fmt.Errorf("Failed to convert to int: %s", t.currentToken)
		}
		return intVal, nil
	}
	return 0, fmt.Errorf("Not an intVal: %s", t.currentToken)
}

// GetIdentifier returns the identifier if identifier
func (t *Tokenizer) GetIdentifier() (string, error) {
	if t.GetTokenType() == Identifier {
		return t.currentToken, nil
	}
	return "", fmt.Errorf("Not an identifier: %s", t.currentToken)
}
