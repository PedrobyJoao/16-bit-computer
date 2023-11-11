# Building a mini computer (hardware and software)
Guided by the book "The elements of computing systems" (by Noam Nisan e Shimon Schocken), 
I'm in practice building a mini and simple 16-bit computer. Implementing everything from
the smallest chips (NAND, AND...), Registers, RAM, ALU, CPU on the hardware level. 
But also Assembler, a Virtual Machine, a high-level programming language, Compiler, and finally
a Operating System

## Specs

### Hardware
* CPU with 16-bit machine instructions
    * ALU (with 18 native operations, arithmetic and logic operations being more specific)
    * Data Register
    * Address Rgister
    * PC Register (Program-Counter which keeps the address of the next instruction)
    * Control Unit (which is kinda abstract on my implentation)
* 32K ROM 
* 16K RAM + 8K for memory-mapped I/O memory (screen + 1 for keyboard)

Built and tested using HDL and a hardware simulator and also a CPU emulator.

Note: 32K on memory measurement is the number of 16-bit registers (and K == 2^10 == 1024).

Note: *Screen and Keyboard** were not built by me obviously. They are virtualized by one of the book's simulator.

### Software
* Assembler
    * Translates Assembly symbolic code to machine language (machine instructions)
* VM translator/implementation (compiler backend)
    * Translates VM intermediary code to assembly
* Hack high-level programming language
* Compiler
* OS

### Acknowledgment
Thanks Noam and Shimon for this incredible book.

### TODOs:
- [] Blog post explaining how a computer works from nand to tetris hihi =) (one of the reasons for this is to consolidate 
what I learned through these months)
- [] More detailed acknowledgment session 
