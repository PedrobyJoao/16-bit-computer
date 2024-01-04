package main

import (
	"io"
	"log"
	"os"

	"github.com/PedrobyJoao/16-bit-computer/compiler/jack_analyzer"
	"github.com/PedrobyJoao/16-bit-computer/compiler/tokenizer"
)

func main() {
	// Check if the file name is provided
	if len(os.Args) < 2 {
		log.Fatal("Usage: go run main <file/directory path>")
	}

	tokenizer, err := tokenizer.NewTokenizer(os.Args[1])
	if err != nil {
		log.Fatalf("Failed to create tokenizer: %s", err)
	}

	xml, err := jack_analyzer.New(os.Args[1])
	if err != nil {
		log.Fatalf("Failed to create xml writer: %s", err)
	}
	xml.Write("<tokens>\n")

	for {
		hasToken, err := tokenizer.Advance()
		if err != nil {
			if err == io.EOF {
				break
			}
			log.Fatalf("Failed to advance tokenizer: %s", err)
		}
		if hasToken == false {
			continue
		}
		tokenType := tokenizer.GetTokenType()
		xml.WriteValueTag(tokenizer.GetCurrentToken(), string(tokenType))
	}
	xml.Write("</tokens>")
	xml.Close()
}
