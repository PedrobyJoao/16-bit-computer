package tokenizer

import (
	"fmt"
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

	scanner := bufio.NewScanner(file)
	return &Tokenizer{}
}
