## Gates (01)

The exercises of 01 consists in building some basic logic gates in which is only allowed
Nand gates (from the start) and the following composite gates that later I built by myself.

TLDR: I can only use the gate if I already built, with the exception of the Nand gate).

After building 5 gates (Not, And, Or, Xor, Mux) I just realized that I don't need to
to try multiple possible combinations of gates, I just need
to use the canonical representation derived from the truth table.

#### How? to obtain the canonical representation?

Select only the rows where the output is 1 and perform an 'AND' operation on the variables, negating them if necessary to maintain the output as 1.

#### Example: 
```
Mux table
|   a   |   b   |  sel  |  out  |
|   0   |   0   |   0   |   0   |
|   0   |   0   |   1   |   0   |
|   0   |   1   |   0   |   0   |
|   0   |   1   |   1   |   1   |
|   1   |   0   |   0   |   1   |
|   1   |   0   |   1   |   0   |
|   1   |   1   |   0   |   1   |
|   1   |   1   |   1   |   1   |

1. Select rows in which the output==1 and "And" the variables (negating them if necessary to keep
the output == 1)

|   0   |   1   |   1   |   1   | not(a) . b . sel == 1
|   1   |   0   |   0   |   1   | a . not(b) . not(sel) == 1
|   1   |   1   |   0   |   1   | a . b . not(sel) == 1
|   1   |   1   |   1   |   1   | a . b . sel == 1

2. Or-together these terms:

not(a) . b . sel + a . not(b) . not(sel) + a . b . not(sel) + a . b . sel

That is it! Now you can either build the gates from this boolean expression or you can reduce it to a simpler form.

Simplifying (I'll split in two parts):

1:
not(a) . b . sel + a . b . sel
sel . (not(a) + a + b + b)
sel . (1 + b + b)
sel . b

2:
a . not(b) . not(sel) + a . b . not(sel)
a . (not(b) + b + not(sel) + not(sel))
a . (1 + not(sel))
a . not(sel)

sel . b + a . not(sel)
```

#### Canonical representation with more than one output (DMux)

DMux has two inputs and two outputs, so how the he** will I apply this technique?
We do the same but we treat each output as an unique function.

```
DMux truth table:
|  in   |  sel  |   a   |   b   |
|   0   |   0   |   0   |   0   |
|   0   |   1   |   0   |   0   |
|   1   |   0   |   1   |   0   |
|   1   |   1   |   0   |   1   |

For func a(in, sel):

|  in   |  sel  |   a   |   b   |
|   1   |   0   |   1   |   0   |

func a(in, sel) = in . not(sel)

For func b(in, sel):

|  in   |  sel  |   a   |   b   |
|   1   |   1   |   0   |   1   |

func b(in, sel) = in . sel
```

Then we just have two pipe these two output functions to the outputs of the chip.

#### Multi-bit (buses) chip design

I thought it would be something more complex but as in the real life, we're just connecting
wires to plugs, so we just literally have to use a logic gate *n* times. There is no for loop
in this level of abstraction lol.

#### Multi-Way chips

Again, I thought it would be something more complex but they're just chips with more than one input.
So a Or8Way is an Or gate which accepts 8 inputs and outputs 1 in case at least one of these 8 values 1.
