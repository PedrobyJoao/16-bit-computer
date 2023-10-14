package parser

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

type CommandType int

const (
	CmdA CommandType = iota
	CmdC
	CmdL
)

type Parser struct {
	file       *os.File
	scanner    *bufio.Scanner
	currentCmd string
}

func NewParser(filename string) (*Parser, error) {
	file, err := os.Open(filename)
	if err != nil {
		return nil, fmt.Errorf("Failed to open file: %s", err)
	}

	scanner := bufio.NewScanner(file)
	return &Parser{
		file:       file,
		scanner:    scanner,
		currentCmd: "",
	}, nil
}

// Advance read the next line, setting p.currentCmd to the line's value if not a comment.
// Returns an error if there is a general error with scanning but it returns nil if EOF
func (p *Parser) Advance() error {
	if p.scanner.Scan() {
		line := p.scanner.Text()

		// Check if it's a commented line
		if len(line) >= 2 && line[:2] == "//" {
			return nil
		}

		p.currentCmd = strings.ReplaceAll(line, " ", "")
		return nil
	}
	return p.scanner.Err()
}

// GetCommandType returns the command type based on the line string
func (p *Parser) GetCommandType() CommandType {
	if strings.HasPrefix(p.currentCmd, "@") {
		return CmdA
	}

	if strings.HasPrefix(p.currentCmd, "(") {
		return CmdL
	}

	return CmdC
}

// GetSymbol gets the value or symbol of a A-Instruction '@xxx' or a Label-Command '(xxx)'
func (p *Parser) GetSymbol() (string, error) {
	// check if A or L type
	if strings.HasPrefix(p.currentCmd, "@") {
		decimalOrSymbol := strings.TrimPrefix(p.currentCmd, "@")
		return decimalOrSymbol, nil
	}
	return "", fmt.Errorf("Line does not start with '@'")
}

// GetDestMnemonic returns the mnemonic for the destination bits based on the C-Command. If not C-Command,
// return error
func (p *Parser) GetDestMnemonic() (string, error) {
	if p.GetCommandType() != CmdC {
		return "", fmt.Errorf("Dest mnemonic is only parsed for C-Commands!")
	}

	if !strings.Contains(p.currentCmd, "=") {
		return "null", nil
	}

	// Get all the characters before "="
	destMnemonic := strings.Split(p.currentCmd, "=")[0]

	return destMnemonic, nil
}

// GetCompMnemonic returns the comp mnemonic in the current C-Command. If not C-Command,
// return error
func (p *Parser) GetCompMnemonic() (string, error) {
	if p.GetCommandType() != CmdC {
		return "", fmt.Errorf("Comp mnemonic is only parsed for C-Commands!")
	}

	// Check if both '=' and ';' are present
	if strings.Contains(p.currentCmd, "=") && strings.Contains(p.currentCmd, ";") {
		parts := strings.Split(p.currentCmd, "=")
		return strings.Split(parts[1], ";")[0], nil
	}

	// Check if only '=' is present
	if strings.Contains(p.currentCmd, "=") {
		return strings.Split(p.currentCmd, "=")[1], nil
	}

	// Check if only ';' is present
	if strings.Contains(p.currentCmd, ";") {
		return strings.Split(p.currentCmd, ";")[0], nil
	}

	return "", fmt.Errorf("Invalid C-Command format!")
}

// GetJumpMnemonic return the mnemonic for the Jump condition. If not C-Command,
// return error
func (p *Parser) GetJumpMnemonic() (string, error) {
	if p.GetCommandType() != CmdC {
		return "", fmt.Errorf("Jump mnemonic is only parsed for C-Commands!")
	}

	if strings.Contains(p.currentCmd, ";") {
		return strings.Split(p.currentCmd, ";")[1], nil
	}

	return "null", nil
}

func (p *Parser) CloseAsmFile() {
	p.file.Close()
}
