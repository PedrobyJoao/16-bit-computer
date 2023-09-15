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

### Exercises

#### RAM8

Ok, how to address registers using composition gates, I don't know.
I first considered using DMux8Way for 8 outputs, and these 8 outputs would be ANDed with
the load-input and just one them would be equal 1. But this is not valid since it's not
only about writing into the register but also about reading a selected, by address, register.

I had an idea but it seems to waste too much computing.
I'll use Mux8Way16, but before using it, we first do the register operation as usual for 
the 8 registers in the RAM8 and then pipe the outputs of these registers to the inputs of
the Mux8Way16.

This seems inefficient because we're changing internal pins of the registers even though we're
not gonna keep the same value.

But if it works, it's still strange, how can I do these operations and change the values of
underlying registers without altering the real registers? I'm lost in this abstractions...

How I was expecting, the above is correct, my implementation has bad side effects that
must be avoided.

My current implementation is:
The problem is when load=1, it changes the value of all registers
```
    PARTS:
    Register(in=in, load=load, out=out0);
    Register(in=in, load=load, out=out1);
    Register(in=in, load=load, out=out2);
    Register(in=in, load=load, out=out3);
    Register(in=in, load=load, out=out4);
    Register(in=in, load=load, out=out5);
    Register(in=in, load=load, out=out6);
    Register(in=in, load=load, out=out7);

    Mux8Way16(a=out0, b=out1, c=out2, d=out3,
    e=out4, f=out5, g=out6, h=out7, sel[0]=address[0],
    sel[1]=address[1], sel[2]=address[2], out=out);

```
I'll try to solve it with DMux8Way, inputing different Load values for each Register.

IT WORKED!!! HEHE

Fixed RAM8 implementation using DMux8Way to input different load values into Registers:
```
    PARTS:
    // the DMux8Way will set load=0 to every non-selected
    // register, and keep 1 (in case load=1) to the selected
    // register
    DMux8Way(in=load, sel[0]=address[0], sel[1]=address[1],
            sel[2]=address[2], a=loadA, b=loadB, c=loadC,
            d=loadD, e=loadE, f=loadF, g=loadG, h=loadH);

    Register(in=in, load=loadA, out=out0);
    Register(in=in, load=loadB, out=out1);
    Register(in=in, load=loadC, out=out2);
    Register(in=in, load=loadD, out=out3);
    Register(in=in, load=loadE, out=out4);
    Register(in=in, load=loadF, out=out5);
    Register(in=in, load=loadG, out=out6);
    Register(in=in, load=loadH, out=out7);

    Mux8Way16(a=out0, b=out1, c=out2, d=out3,
            e=out4, f=out5, g=out6, h=out7, sel[0]=address[0],
            sel[1]=address[1], sel[2]=address[2], out=out);
```

Ok but even though it worked. I'm kinda of worried of my final implementation. I'm not sure
why but it seems inefficient.

Actually, it seems everyone implemented using the same stuffs and workflow. So it's ok.

(Interesting how humans in different parts of the world, in different epoches, arrive at
the same conclusion, almost the same lines of code. (OR maybe this is just something
that there are not a lot of possible different solutions))

#### RAM64, RAM512, RAM4K and RAM16K

First of all, it would be hard to figure out by myself this rule of using least significant bits for
deciding the registers and MSBs for deciding the RAMx between 8 RAMx. I'm glad the book gave me this advice.

My mind get a little lost on this pile of abstractions, RAM16K using all the RAMxs all the way down into the
hierarchy. I try to imagine how would be the chips in the real hardware. From where do we start? Do we use
n RAM8 chips? Or do we build RAM64 chips with RAM8 chips and build the rest with it? Did you get it? This can go
indefinitely recursively to an infinite size chip.. what is the start point in a real hardware?
