package main

import (
	"log"
	"os"
	"path/filepath"
	"strings"

	"github.com/PedrobyJoao/16-bit-computer/compiler/compilation_engine"
)

func main() {
	// Check if the file name is provided
	if len(os.Args) < 2 {
		log.Fatalf("Usage: %s <filename>", os.Args[0])
	}
	// Get the file name from the first command-line argument
	toCompilePath := os.Args[1]
	// Check if the path is a directory or a file
	info, err := os.Stat(toCompilePath)
	if err != nil {
		log.Fatalf("Error accessing the path: %v", err)
	}

	if info.IsDir() {
		// Process each .jack file in the directory
		err := filepath.Walk(toCompilePath, func(path string, info os.FileInfo, err error) error {
			if err != nil {
				return err
			}
			if !info.IsDir() && strings.HasSuffix(info.Name(), ".jack") {
				return compileJackFile(path)
			}
			return nil
		})
		if err != nil {
			log.Fatalf("Error walking through the directory: %v", err)
		}
	} else if strings.HasSuffix(toCompilePath, ".jack") {
		err := compileJackFile(toCompilePath)
		if err != nil {
			log.Fatalf("Failed to compile .jack file: %v", err)
		}
	} else {
		log.Fatalf("The provided path must be a directory or a file with a .jack extension")
	}
}

func compileJackFile(jackFilePath string) error {
	fileOutPath := strings.TrimSuffix(jackFilePath, ".jack") + ".vm"

	// Create the compilation engine with the tokenizer and output path
	compilationEngine := compilation_engine.New(jackFilePath, fileOutPath)
	compilationEngine.CompileClass()

	return nil
}
