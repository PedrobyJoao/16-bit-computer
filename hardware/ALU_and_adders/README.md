#### HalfAdder and FullAdder
This is something that I kinda already knew from my past experience reading "Code - Charles Petzold".

But something new that I have to add is a new technic to build chips. What I can do if I already know
at least a half of the logic gates and order of them to be used, I can draw the gates and try with different
inputs. This makes easy to discover the rest of the chips to be used through the chip.

#### Inc16
At first, I used 15 HalfAdders to implement this chip but apparently the following are possible:

```
1. Add16(a=in, b[0]=true, b[1..15]=false, out=out);

2. Add16(a=in,b[0]=true,out=out);

```
The first one, ok, I forgot about this syntax rule that I could use which was mentioned on appendix. But for the second one,
I didn't know this "syntax sugar" was possible.

### Building the ALU

#### Conclusions (detailed notes after improvements section)
First, building the ALU was easier than Multi-way Multi-bit Mux/DMux'es. I thought ALU would be very hard to make, taking me days of study and work. But it was quite easy and funny, I liked a lot this process.

Important things that I learned:
1. If you have to choose between options, then you probably have to use a Multiplexor (Selector)
2. A reminder that the order of inputs is important. The order of the selector bits are also important for the ALU, we zero the variables before negating them if both == 1. More than that: 
```
Mux16(a=X, b=Y...) != Mux16(a=Y, b=X...)

Because the primitive Mux has this:

    Not(in=sel, out=notsel);
    And(a=a, b=notsel, out=w1);

    And(a=sel, b=b, out=w2);

    Or(a=w1, b=w2, out=out);

In which the order is obviously important

The order of inputs is only irrelevant when dealing with
very basic primitives gates (OR, NAND, AND, XOR...) 
```

#### Improvements
1. Instead of splitting the output and getting the Most Significant Bit on separate lines, I could have embedded everything in one as in:

```
Mux16(a=result, b=negatedResult, sel=no, out=out, out[15]=firstOut, out[0..7]=finalLeft, out[8..15]=finalRight);
```

#### Detailed Notes

#### zx and zy
```
// if (zx == 1) set x = 0

Truth table for the above expression:
zx out
0   x
1   0

If we get the truth table of DMux2Way:
sel     a       b
0       in       0
1       0       in
0       in       0
1       0       in
---------------------
sel a   b
0   in  0
1   0  in
=====================
zx out
0   x
1   0

Therefore, for f(in, zx) we just have to get the output 'a'
of DMux(in, zx)

WAIT =) DIDN'T WORK ! Actually this won't work because we're dealing with different bus widths.
Oh ok, we have to use Mux16 where b[0..15] == false and a == x

Truth table of f(zx, x):
a   b   sel out
x   0   0   x
x   0   1   0

Mux16 removing all cases which b != 0:
|   a   |   b   |  sel  |  out  |
|   0   |   0   |   0   |   0   |
|   0   |   0   |   1   |   0   |
|   1   |   0   |   0   |   1   |
|   1   |   0   |   1   |   0   |

Exactly what we needed!
```

#### nx and ny
```
// if (nx == 1) set x = !x
It's probably Mux16 also or some variant, let me check:

Truth table considering Mux16:
a   b   sel out
x   !x  0   x
x   !x  1   !x

Mux16 keeping only rows where b = !a:
|   a   |   b   |  sel  |  out  |
|   0   |   1   |   0   |   0   |
|   0   |   1   |   1   |   1   |
|   1   |   0   |   0   |   1   |
|   1   |   0   |   1   |   0   |
```

#### zr
The small change from if something == 1 to something == 0, made me stop my killstreak
of smashing every bit selector. Now let me stop to think about this one.

For something reason the following is not working...
```
// if (out == 0) set zr = 1
Or8Way(in=outFinal[0..7], out=orOut1);
Or8Way(in=outFinal[8..15], out=orOut2);
Or(a=orOut1, b=orOut2, out=orOutFinal);
Not(in=orOutFinal, out=zr);
```
Ok so HDL does not allow make use sub-bus of internal pins

Then I later noticed that I only need a basic Or16Way gate which I didn't have so I need
to do some twerks.
```
    // if (out == 0) set zr = 1

    // The following line is just so that we can split the output into two buses
    // since .hdl does not allow doing sub-buses with internal pins
    Or16(a=outFinal, b=outFinal, out[0..7]=outFinal1, out[8..15]=outFinal2);

    // Since we don't have Or16Way gate, let's use two Or8Way gates
    Or8Way(in=outFinal1, out=orOutFinal1);
    Or8Way(in=outFinal2, out=orOutFinal2);

    Or(a=orOutFinal1, b=orOutFinal2, out=notZr);
    Not(in=notZr, out=zr);
```

#### ng

I'm not sure if this is considered "cheating" but what I did was to get the
most significant bit of the bus and from it decide if the number is positive/negative.

Why? Because the book says:
```
if the MSB == 1, then it's a negative number (in the base 10)
if the MSB == 0, then it's a positive number (in the base 10)
```
