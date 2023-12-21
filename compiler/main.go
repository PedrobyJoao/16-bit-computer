package main

import (
	"fmt"
	"io"
	"log"
	"os"

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
		fmt.Printf("Token: %s, Type: %s\n", tokenizer.GetCurrentToken(), tokenType)

	}
}
