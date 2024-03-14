package tests

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
)

// compareXMLFiles runs the TextComparer.sh script to compare two XML files.
func compareXMLFiles(compiledXML, correctXML string) (bool, string, error) {
	// TextComparer.sh needs to be on $PATH
	cmd := exec.Command("TextComparer.sh", compiledXML, correctXML)
	output, err := cmd.CombinedOutput()
	if err != nil {
		return false, string(output), err
	}
	return true, string(output), nil
}

// TestXMLComparison walks through the directory tree and compares XML files in the compiled directories.
func TestXMLComparison(t *testing.T) {
	root := filepath.Join("$HOME", "study/nand2tetris/projects/10") // Adjust the root directory as needed
	root = os.ExpandEnv(root)

	err := filepath.Walk(root, func(path string, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}
		if info.IsDir() && filepath.Base(path) == "compiled" {
			parentDir := filepath.Dir(path)
			parentDirName := filepath.Base(parentDir) // Get the name of the parent directory
			files, err := os.ReadDir(path)
			if err != nil {
				return err
			}
			for _, file := range files {
				if strings.HasSuffix(file.Name(), ".xml") {
					compiledXML := filepath.Join(path, file.Name())
					correctXML := filepath.Join(parentDir, file.Name())
					testName := fmt.Sprintf("Comparing_%s_%s", parentDirName, file.Name())
					t.Run(testName, func(t *testing.T) {
						success, output, err := compareXMLFiles(compiledXML, correctXML)
						if err != nil {
							t.Fatalf("Failed to run comparison: %v", err)
						}
						if !success {
							t.Errorf("Comparison failed for %s: %s", compiledXML, output)
						}
					})
				}
			}
		}
		return nil
	})

	if err != nil {
		t.Fatalf("Failed to walk through the directory tree: %v", err)
	}
}
