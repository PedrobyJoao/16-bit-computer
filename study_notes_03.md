#### Combinational chips, Sequential chips and Flip-Flops

Until now, we built only **combinational chips** in which the dependency was solely only the combination of inputs and outputs values between chips, the time was not relevant.

**Sequential chips**, besides depending on the inputs/output values and potentially their combination, it also **depends on time** itself usually computed by a oscillator abstracting the clock.

**Flip-Flops** is one of the most primitive gates for keeping state. We'll use only data Flip-Flops (DFF) in which `out(t) = in(t - 1)` so it's always outputing the previous input, always. It does keep the state but in a limited manner.

#### Register, Memory and RAM

Relating with DFF (Data Flip-Flops), Registers yield `out(t) = out(t - 1)` depending on another param usually called `load`. A Register won't output the last input but it'll yield the last output. And the last output is always the same unless we change the data-input while the load=1.

A register is the smallest unit of state (memory) in a computer, a **1-bit register** (called also **Binary Cell** or just Bit) has the ability of store a 1-bit value. Registers can vary in width, it can go from 1-bit width to **n**-bit width, n-bit width registers are simply formed by a group of those binary cells (1-bit registers). It's important to note that a n-bit register can be called **word**.

Word is the standard size of memory processed by the ALU, stored by RAM and used by other parts of the hardware. Word is nothing more than a n-bit standard within a computer architecture. Nowadays, we usually see 32-bits/64-bits computer which means these computer has a word of 32-bits/64-bits respectively.

**Words are addressed within RAM**: Besides accepting a data-input and the load-input, RAM accepts a **address** input because **each word is addressed by a single and unique value**.

If we access memory address 123, having the data-input=5, and the load=0. Then RAM will return the current value of the word. But if the load=1, then the RAM will, in the beginning of the next cycle, change the current value of the word (of address 123) to the new value data-input=5

#### Counter and the importance of time

Regarding **Counters** (sequential chip) which increments x as in `out(t) = out(t - 1) + x` is specially important to **orchestrate a set, and sequential, instructions to be executed by the computer**. This is done by having each instruction addressed by an address, and the counter will increment, in the necessary order, the address of the instructions to be executed.

Addr(123) = execute X, c++, Addr(124) = execute Y, c++,...

DFF has a side effect: since inputs depend on output and thus outputs depend on output themselves, we have a problem of race condition here, a given data X can not be updated on time to be correctly operated on it. This is SOLVED by the clock, as the book says: **"... the length of the clock cycle will be slightly longer that the time it takes a bit to travel the longest distance from one chip to another"**
