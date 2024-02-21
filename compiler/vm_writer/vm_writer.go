package vm_writer

import (
	"fmt"
	"os"
)

type Segment string
type Command string

const (
	CONST    Segment = "constant"
	ARGUMENT Segment = "argument"
	LOCAL    Segment = "local"
	THIS     Segment = "this"
	THAT     Segment = "that"
	POINTER  Segment = "pointer"
	TEMP     Segment = "temp"
)

const (
	ADD Command = "add"
	SUB Command = "sub"
	NEG Command = "neg"
	EQ  Command = "eq"
	GT  Command = "gt"
	LT  Command = "lt"
	AND Command = "and"
	OR  Command = "or"
	NOT Command = "not"
)

type VmWriter struct {
	outFile *os.File
}

// New creates a new VmWriter
func New(out *os.File) *VmWriter {
	return &VmWriter{
		outFile: out,
	}
}

// WritePush writes a VM push command
func (vm *VmWriter) WritePush(segment Segment, index int) {
	vm.outFile.WriteString(fmt.Sprintf("push %s %d\n", segment, index))
}

// WritePop writes a VM pop command
func (vm *VmWriter) WritePop(segment Segment, index int) {
	vm.outFile.WriteString(fmt.Sprintf("pop %s %d\n", segment, index))
}

// WriteArithmetic writes a VM arithmetic command
func (vm *VmWriter) WriteArithmetic(command Command) {
	vm.outFile.WriteString(fmt.Sprintf("%s\n", command))
}

// WriteLabel writes a VM label command
func (vm *VmWriter) WriteLabel(label string) {
	vm.outFile.WriteString(fmt.Sprintf("label %s\n", label))
}

// WriteGoto writes a VM goto command
func (vm *VmWriter) WriteGoto(label string) {
	vm.outFile.WriteString(fmt.Sprintf("goto %s\n", label))
}

// WriteIfGoto writes a VM if-goto command
func (vm *VmWriter) WriteIfGoto(label string) {
	vm.outFile.WriteString(fmt.Sprintf("if-goto %s\n", label))
}

// WriteCall writes a VM call command
//
// Detail: subroutine may come as <className>.<subroutineName>
func (vm *VmWriter) WriteCall(subroutine string, nArgs int) {
	vm.outFile.WriteString(fmt.Sprintf("call %s %d\n", subroutine, nArgs))
}

// WriteFunction writes a VM function command
func (vm *VmWriter) WriteFunction(name string, nLocals int) {
	vm.outFile.WriteString(fmt.Sprintf("function %s %d\n", name, nLocals))
}

// WriteReturn writes a VM return command
func (vm *VmWriter) WriteReturn() {
	vm.outFile.WriteString("return\n")
}

// Close closes the output file
func (vm *VmWriter) Close() error {
	if vm.outFile == nil {
		return fmt.Errorf("output file is nil")
	}

	if err := vm.outFile.Close(); err != nil {
		return fmt.Errorf("failed to close output file: %v", err)
	}
	return nil
}
