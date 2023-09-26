#### Machine Language

What I understood until now is that a Machine Language is a new layer of abstraction within a computer
which abstracts binary operations and memory writings/readings through a set of rules (formality). The base
for this are **instructions**, an **instruction** is a **n-bit** binary number meaning a certain operation should be done
on **m** operands.

And **Machine Language** is used to **code low-level programs as a set of machine instructions**

It's fascinating how the authors differentiate high-level programming languages and machine language. Claiming that
the **goal of high-level programming languages is generality and power of expressions** (aka abstraction to the programmer)
while, for machine language, the goal is to directly **send instructions to the hardware** (with total control of it)

In this chapter, the computer is abstracted in three parts: Memory, Processor and Registers. For those, we have two important
things to point out:
1. Memory is a collection of hardware devices capable of storing data
2. Besides storing values, Memory is also capable of **storing instructions**
3. Memory here is the array of cells in which each cell has a fixed width called **word**, **identified uniquely by an address**
3. **Important**: Why both Memory and Registers? **Registers** will be used to assist the CPU with its logical and arithmetic
operations. Why not use Memory? Because it costs more time and number of operations. Registers within a CPU are meant to be 
near phisically and used solely for ALU operations, being much faster. (We can say it's a High-Speed local memory for the CPU)

For the above points, there is something called **Memory Hierachy**. Memory, as pointed out in the point 1., is a collection of
hardware devices capable of storing data.. so there are more than one hardware devices for memory. For different reasons and
goals, mainly related to efficiency and longevity of data, we separate the memory of a computer in (not only):
- Processor Registers (for CPU operations)
- Cache
- Memory (RAM)
- Disk


Example for a 16-bit computer:
(Reminder: there is no standard machine language, it's defined by the hardware producer. So all the following
rules are arbitrary)

```
`1010001100011001`

Separating the above binary number in 4 groups of 4-bits, in which the Most Significant Group will tell the 
operation to be done, and the others are the operands.

`1010`: Addition

`0011` R3: output will be stored on R3

`0001` R1: operand A

`1001` R9: operand B
```

Furthermore, Machine Language is not only defined with binary numbers but also with **mnemonics** so that we don't have to deal solely
with binary numbers within this layer of abstraction. Mnemonics is how we can label these 4-bit groups mean with symbols, example:
```
`1010`: means ADD
`0011`: means R3
```

HOWEVER, keep in mind that **mnemonics don't really exist in a Machine Language**, mnemonics are just an abstraction to simplify 
talks about Machine Language. 

**Machine Language** is really just the machine instructions in a binary format based on a set of rules deciding which are the 
operations and operands for each instruction.

And here is where **Assembly** comes to the game.
Going up one more level of abstraction, we can allow ourselves to write entire programs using a symbolic language called Assembly
which will be translated to machine language through an Assembler. Assembly will make use of the mnemonics to denotate operations
and also other symbols for operands.

```
 Assembly: plain text with a symbolic notation, utilizing of mnemonics to express operations and operands accordingly to the ML
    |
    |
    V
 Assembler: translates the Assembly symbolic notation to Machine Language
    |
    |
    V
 Machine Language: set of machine binary-instructions
```

Just a quick curiosity: how does I/O (i.e.: keyboard) devices work? All the inputs and outputs are stored and managed in the Memory (RAM).

### Exercises

#### Mult.asm

```
IMPLEMENTATION STRATEGY:

R0 * R1 w

for i=0, i < R1, i++ {
    R2=R2+R0
}

Some detailed steps:

    // check if i < R1, if not jump to end
    For this part, we have to somehow simplify the if condition to a condition with the operand digit 0

    (-i) + i <= R1 + (-i)
    0 <= R1 - i
    While this is true: R1 - i => 0

    (Since I put the condition part in the beginning of the loop, and we're literally jumping to a certain
    instruction, in case R1 - i => 0 was true, the loop should continue, we might just jump to the END in case
    it's false or in case R1 - i <= 0 is true)
```

Something important that I learned: do not exclude tests from the .tst file, the overall testing won't work correctly and it'll yield incorrect outputs
