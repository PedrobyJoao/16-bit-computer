package main

import (
	"log"
	"os"

	"github.com/PedrobyJoao/nand-to-tetris-projects/06/hack_assembler/parser"
)

func main() {
	// Check if the file name is provided
	if len(os.Args) < 2 {
		log.Fatalf("Usage: %s <filename>", os.Args[0])
	}

	// Get the file name from the first command-line argument
	filename := os.Args[1]

	p, err := parser.NewParser(filename)
	if err != nil {
		log.Fatalf("Failed to instantiate Parser, Error: %v", err)
	}
	defer p.CloseAsmFile()

	// TODO
}
