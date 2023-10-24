### Virtual Machines
Virtual Machines are usually, but not always, a portable way of compiling and executing
high-level language programs.

One of the standard Virtual Machines architecture is a two-staged process based on
a intermediary language (defined by the VM design)
1. Compilation process (also called Front-End): parse the high-level code into 
the intermediary VM's language
2. VM translation (also called Back-End): translate the intermediary VM's language
to the hardware's machine language or assembly code (depending on the VM).

Note: not every language makes use of VMs, and not all VMs are based on this two-staged architecture.

- Golang is statically compiled which means its code is compiled directly to the hardware machine code
- Rust uses LLVM which is not a VM but a group of libraries and tools to make the compilation and VM translation
process easy (even though it's not a VM, they seem to use the same two-staged process, having their own
intermediary language called IR)
- Java uses the two-staged VM architecture

### Stack based architecture for execution
Any arithmetic or logical expression can be reduced within a set of commands within a stack data structure

Stack machine commands can be separated in four types:
- Arithmetic and logical commands
- Memory segments commands: transfer data between stack and virtual memory segments
- Program flow (Branching commands): branching operations (aka labels and goto operations)
- Function commands (subroutines): call functions and return from them
```
d = (2-x)*(y+9)

Commands:
push 2
push x
sub
push y
push 9
add
mult
pop d

Stack by command:
(x, y and d are memory values)
let x=1, y=2
push 2
stack: [2]

push x
stack: [2
        1]

sub
stack: [1
        ]

push y
stack: [1
        2]

push 9
stack: [1
        2
        9]

add
stack: [1
        11]

mult
stack: [11]

pop d (stores top value into 'd')
stack: []
```

### VM Specification
To explain:
- Besides being stack-based, it's also function-based: a VM program is separated in program units called functions 
which are handled separated
- The stack abstraction and its relation with the VM segments: the stack is just an abstraction on top of
the formalized VM virtual memory segments which are used to push/pop values within it.
- The heap: the heap is the RAM part which we use to store objects and arrays (manipulated by the VM)..
(Note: this is in the context of Hack. For other architectures, the Heap is generally used for dynamic memory
allocation which includes objects and arrays but not only, it can be any allocation/deallocation of memory
during the program's execution, rather than at compile time)

Questions:
- Does VM also executes the code itself?
ANSWER: Some of them, yes, they even take care of memory allocation and garbage collection

- Does VM/Compilers translates directly to the machine language code? No, right? They translate
to the assembly language and the latter is responsable to parse to machine language, right?
ANSWER: It depends on the VM and Compiler, modern VMs and Compilers translate directly to machine language. 
But some old compilers translate to assembly and let the assembler handle the rest.

- Why the need of virtual memory segments while we can just access the real memory?
ANSWER: As answered bellow, it's about abstraction.. but not only, it's about also memory protection
so that the memory access is scoped depended on class, function, file, directory, program...

As for some questions regarding virtual memory segments, now I think I understood, it's the same
deal as we had with pre-defined registers for assembly programming. This virtual memory contains
segments that make the easy-access of abstraction's values created by the program itself.
