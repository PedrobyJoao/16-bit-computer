### Assembler
I didn't take any notes while doing this, maybe it's because this wasn't very CS stuff.
It was more about parsing a .asm file into a list of machine language 16-bit instructions
within a .hack file.

The main thing that I can say about this chapter is a question that I saw in youtube:
> "Ok, now we wrote the Assembler in an arbitrary high-level programming language just
> because we're building everything within our own computer. But how would that work for
> the 'first' computer? How would the Assembler of it be built without a high-level programming
> language?"

It seems there is a concept of **Bootstrapping** for both Assembler and Compilers. **A very basic 
assembler is written with binary machine language instructions** (in its binary form) and then more complex
and efficient assemblers are built on top of it.
