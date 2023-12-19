package tokenizer

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strings"
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

type Tokenizer struct {
	reader            *bufio.Reader
	currentToken      string
	currentLine       string
	unprocessedTokens []string
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
		reader: r,
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

	words := strings.Fields(line)
	// TODO: identify symbols within strings and expand this list of tokens
	var tokens []string
	for _, word := range words {
		tokens = append(tokens, splitStringBySymbol(word)...)
	}

	fmt.Printf("words: %v\n", words)
	return words, nil
}

// splitStringBySymbol splits a string based on Hack symbols (an lexical
// element), maintaining the symbol on the list. Examples:
// "class.method" -> ["class", ".", "method"]
// "+num" -> [+, num]
// "x>=10" -> [x, >=, 10]
// ++; -> [++, ;]
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
	if len(t.unprocessedTokens) == 0 {
		_, err := t.extractTokensFromNextLine()
		if err != nil {
			return false, err
		}
	}
	// TODO: handle the available unprocessedTokens
	return true, nil
}
