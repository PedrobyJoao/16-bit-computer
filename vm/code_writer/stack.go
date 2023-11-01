package code_writer

import (
	"fmt"
)

// Stack represents a basic stack structure
type Stack struct {
	items []int
}

// NewStack creates a new stack
func NewStack() *Stack {
	return &Stack{}
}

// Push adds an item to the top of the stack
func (s *Stack) Push(item int) {
	s.items = append(s.items, item)
}

// Pop removes the top item from the stack and returns it
// Returns an error if the stack is empty
func (s *Stack) Pop() (int, error) {
	if len(s.items) == 0 {
		return 0, fmt.Errorf("stack is empty")
	}
	lastItemIndex := len(s.items) - 1
	item := s.items[lastItemIndex]
	s.items = s.items[:lastItemIndex]
	return item, nil
}

// Peek returns the top item from the stack without removing it
// Returns an error if the stack is empty
func (s *Stack) Peek() (int, error) {
	if len(s.items) == 0 {
		return 0, fmt.Errorf("stack is empty")
	}
	return s.items[len(s.items)-1], nil
}

// IsEmpty returns true if the stack is empty, otherwise false
func (s *Stack) IsEmpty() bool {
	return len(s.items) == 0
}

// Size returns the number of items in the stack
func (s *Stack) Size() int {
	return len(s.items)
}
