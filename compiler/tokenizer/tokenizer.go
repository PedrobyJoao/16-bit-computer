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

	fmt.Printf("words: %v\n", words)
	return words, nil
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
