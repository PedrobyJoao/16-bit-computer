package parser

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"path/filepath"
	"strconv"
	"strings"
)

type CommandType int

const (
	C_ARITHMETIC CommandType = iota
	C_PUSH
	C_POP
	C_LABEL
	C_GOTO
	C_IF
	C_FUNCTION
	C_RETURN
	C_CALL
)

type Parser struct {
	file       *os.File
	fileName   string
	scanner    *bufio.Scanner
	CurrentCmd string
	Eof        bool
}

func NewParser(filePath string) (*Parser, error) {
	if !strings.HasSuffix(filePath, ".vm") {
		return nil, fmt.Errorf(
			"The provided file must have a .vm extension, file path: %v",
			filePath)
	}

	// removing .vm and getting pure file name without extension
	base := filepath.Base(filePath)
	fileName := strings.TrimSuffix(base, filepath.Ext(base))

	file, err := os.Open(filePath)
	if err != nil {
		return nil, fmt.Errorf("Failed to open file: %s", err)
	}

	scanner := bufio.NewScanner(file)
	return &Parser{
		file:       file,
		fileName:   fileName,
		scanner:    scanner,
		CurrentCmd: "",
		Eof:        false,
	}, nil
}

// Advance read the next line, setting p.CurrentCmd to the line's value if not a comment.
// Returns an error if there is a general error with scanning but it returns nil if EOF.
// Returns true only when it's not a comment and not EOF
func (p *Parser) Advance() (bool, error) {
	if p.scanner.Scan() {
		line := p.scanner.Text()

		line = strings.TrimSpace(line)

		// Check if it's a commented line
		if (len(line) >= 2 && line[:2] == "//") ||
			(line == "") {
			return false, nil
		}

		// Remove inline comments
		if commentPos := strings.Index(line, "//"); commentPos != -1 {
			line = line[:commentPos]
		}

		p.CurrentCmd = line
		log.Printf("Current command: %v", p.CurrentCmd)
		return true, nil
	}
	p.Eof = true
	return false, p.scanner.Err()
}

// GetCommandType returns the command type based on the line string
func (p *Parser) GetCommandType() CommandType {
	if strings.HasPrefix(p.CurrentCmd, "push") {
		return C_PUSH
	} else if strings.HasPrefix(p.CurrentCmd, "pop") {
		return C_POP
	} else {
		return C_ARITHMETIC
	}
}

// Arg1 returns the first argument of the current command.
func (p *Parser) GetArg1() (string, error) {
	if p.GetCommandType() == C_RETURN {
		return "", fmt.Errorf(
			"C_RETURN doesn't have args, Command: %v", p.CurrentCmd)
	}

	parts := strings.Fields(p.CurrentCmd)
	if len(parts) > 1 {
		return parts[1], nil
	}
	if len(parts) == 1 {
		return parts[0], nil
	}
	return "", fmt.Errorf("No arg1 was found for command: %v", p.CurrentCmd)
}

// Arg2 returns the second argument of the current command.
func (p *Parser) GetArg2() (int, error) {
	cmdType := p.GetCommandType()
	if cmdType == C_ARITHMETIC ||
		cmdType == C_LABEL ||
		cmdType == C_GOTO ||
		cmdType == C_RETURN ||
		cmdType == C_IF {
		return 0, fmt.Errorf("Command of type %v doesn't have arg2", cmdType)
	}

	parts := strings.Fields(p.CurrentCmd)
	if len(parts) > 2 {
		value, _ := strconv.Atoi(parts[2])
		return value, nil
	}
	return 0, fmt.Errorf("No arg2 was found for command: %v", p.CurrentCmd)
}
