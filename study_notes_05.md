### Stored Programs, CPU internals (Control Units and specific registers) and Memory-Mapped I/O

- **Stored Program** very related to von Neumann architecture and Universal Turing Machines brings
a new concept back on the 30's, before, it was commum the notion of storing data but Turing, von Neumann,
and other mathematicians brought the concept of **storing programs (aka machine instructions (AKA SOFTWARES))**.

I think this now is kinda obvious since we already learned about Machine Language and how we have this notion
of storing machine instructions in its binary form based on the ML's formalism. In the computer, we have
a **instruction memory** where instructions are stored (**as data are since both are represented by a binary word**).

And for Universal Turing Machine, each block of tape could store a different kinda of computation (if I'm not mistaken).

**CPU and its memory registers**: the CPU, in the Hack computer, has three internal components: **ALU**, **Registers** and
**Control Unit**

- **Control Unit** is responsible for **DECODING and deciding** which instruction to fetch and execute next.
- **Registers**: each register is a 16-bit word with a specific goal
    1. **Data Register**: give CPU short-term memory with a single word register
    2. **Address Register**: where instruction or data addresses are stored for CPU use
    3. **Program Counter Register (PC)**: where the **NEXT instruction to be fetched** is stored

**Memory-Mapped I/O**: as I said in the previous chapter, I/O devices are literally mapped to an address (or an array of addresses)
within the Memory. Any inputs will be written in the given memory addresses for the Input device. For output devices, softwares will
write something in the memory which is what the output device will receive.

Example of mapped memory: In my computer X, the screen is allocated with a sequence 8K Registers starting at Memory[14321]

### Exercises

#### CPU (Central Processing Unit)
Damn! Ok, one thing that I just learned (or I may be wrong) but the diagram showed on the book is incomplete and misleading,
we actually have to do some combination logic to differentiate A-instructions and C-instructions before every control bit
insertion.

Tip: 
- get based on the diagram but imagine the workflow of each type of instruction.
- ARegister (15-bit register) doesn't necessarily mean a register containing an Address, it can contain also values

Example:
```
A-Instruction
---------------
 
On the first MUX, we have to decide between the current A-Instruction or the outM that may or not be an instruction
...
Actually, let's get this example to the PC (Program Counter) and come back here later:

PC interface:
    PC(in=ValueOnARegister, load= , inc= , reset=reset, out=pc);

PC depends on control bits of C-instructions for JMP instructions but JMP instructions just exist within C-instructions
so we have to filter between both before inserting any information within PC.

If A-Instruction:
    Load=0
    Inc=1
    return
Else if C-Instruction:
    // JMP control bits logic
    If control bits == 0, 0, 0:
        Load=0
        Inc=1
        return

    // The following was achieved by comparing JMP bits and outputs of ALU
    XOR(j1, zr)
    XOR(j2, ng)
    XOR(j3, !ng)

    And then NOr3 between outputs of XOR

    And put the output on PC(load)
```

I just finished. However, my Program Counter part, there is an overhead of hdl code. Other people's implementation is
simplier.

And I was also using Mux when I didn't need (since I was inputing constants)

#### Boolean Algebra and set theory
Ok, I learned one of the most important things of Boolean Algebra now. Actually, I remembered one of the most important things.
When dealing with boolean expressions and truth tables, I have to remember that I can also play with sets theory.

**AND is intersection and OR is Union** This is so useful because then I don't have to develop a canonical representation
every time.

Example:
I wanted to know if the output is only greater than 0 (out > 0).

I had the following knowledge:

1. out = 0
2. out >= 0
```
    out = 0     out => 0     out > 0
        0           0           0
        0           1           1
        1           0           0
        1           1           0
```
I can either develop the canonical representation OR 
simply think: I want to know if it's greater than 0, ok. Numbers greater than 0, are numbers that
are NOT equal 0 and ARE GREATER OR EQUAL THAN 0.

In set theory terms: out > 0 is the intersection between the set NOT(out = 0) AND out => 0
If the intersection contains out => 0 and everything with the exception of out = 0, then the result is out > 0

#### Mux with constant inputs is equal And()
When using constants as inputs for Mux, then I probably shouldn't be using Mux but an AND gate

Example:
```
    Mux(a=false, b=bitDestMemory, sel=instructionType, out=writeM);
Is equal
    And(a=bitDestMemory, b=instructionType, out=writeM);
```

#### Others

Another thing is my Program Counter part, there is an overhead of hdl code. Other people's implementation is
simplier.

#### Where the hell the value from inM comes from? Who is setting it?
I couldn't wrap my mind around the fact we're reading a value from memory but no one was setting the inM,
we're just outputing the value of memory when setting the writeM to 1. WRONG!!!!

`Memory(in=cpuOut, load=writeToMemory, address=memAddrToWrite, out=memoryInput);`

Even if writeToMemory == 0, the output will be the value of the memory accordingly to the memory address passed as input.

So, when do `@31`, we set the A register to 31 in binary and addressM=31(binary), therefore, it doesn't matter the input
`cpuOut` or the load input `writeToMemory`, we're setting address of Memory to 31 and we will get the output back.
