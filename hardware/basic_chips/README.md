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
wires to plugs, so we just literally have to use a logic gate **n** times. There is no for loop
in this level of abstraction lol.

#### Multi-Way chips

Again, I thought it would be something more complex but they're just chips with more than one input.
So a Or8Way is an Or gate which accepts 8 inputs and outputs 1 in case at least one of these 8 values 1.

#### Difference between Multi-Way and Multi-Bit concepts
Multi-Bit and Multi-Way are usually represented as an array x[0...m] but, from what I understood,

Multi-Bit (bus) is meant to do boolean operations between **n** chips of **m** bits. So a **AND** operation
for Multi-Bit chips is between **two** chips of **m** bits in which all the operations will be done
in **pairs**.

So Multi-Bit is about boolean operations between **n** buses

Example:
```
AND between two arrays of a Multi-Bit chip containing three elements each: a[3] AND b[3]

Workflow:
Pair: a[0] AND b[0]
Pair: a[1] AND b[1]
Pair: a[2] AND b[2]
```

Now, for Multi-Way chips boolean operations, it's kinda different. The boolean operations occurs with
the bus itself, so there is only **1 bus** being target of boolean operations

Example:
```
Or8Way

Input: one bus in[8]

Outputs 1 if one of the bits in the bus values 1
```

#### Mux4Way16 (this one got me)

This was the hardest until now, canonical representation was helpful but if you simplify it then it won't work
because it'll reduce to 1. However, the canonical representation is also a bit hacky, I would have to build a
3 AND gate in which 2 inputs are 1 bit and the third is a 16-bit bus (it would work but...).

Then, I came to this solution which was to recursivily use a Mux16 (**m** times depending on the **n**-way) three times.

Reminder: this solution is basically a **tree** of Mux outputs calling each other

Actually I tried this before but the catch was: the first and second Mux16 should use sel[0], and the third should use sel[1] and the output of the first/second Mux16's. Which it didn't make sense to me, why did I have to use sel[0] for the selector for deciding between c/d?

The reason why is because this order of selectors is the only one (or not) that differentiate between the outputs of a/b and c/d.
It's better if you check this video if needed: https://www.youtube.com/watch?v=Igs0OCW6b6g
```
sel1 sel2 out 
0    0   a  
0    1   b  
1    0   c  
1    1   d  
```

#### Canonical Representation (review after Mux4Way16)

Note: Also, it seems to get the canonical representation we don't need necessarily to get the rows which output is 1.
It seems it's possible to work like the following

```
sel1 sel2 out 
0    0   a  
0    1   b  
1    0   c  
1    1   d  

1. not(sel1) . not(sel2) . a

2. not(sel1) . sel2 . b

3. sel1 . not(sel2) . c

4. sel1 . sel2 . d

Now, just SUM them!
```

As you can see, none of the outputs is necessarily 1, still, we can get the canonical representation (but now
I'm not sure if for these cases we should stil call it 'minterm'.)

HOWEVER, if we try to simplify this SUM, we get 1. But it's still possible to build the gates from the pure canonical
representation without simplifying it and make a functional chip. 

#### Mux8Way16

I easily got done with this one in 30 seconds but just because I used the tree method used on the last Mux4Way16,
the only difference now it was tree's height (we had one more level/depth to 'Muxit').

Note: I used 7 Mux16 gates for this one (it's also possible to use 2 Mux4Way16 gates and 1 Mux16 gate)


#### DMux4Way and DMux8Way

Both can be solved with a tree-like method as the normal Mux but instead of a normal tree, we must use a inversed tree and
also change the order of the selectors

Note: for DMux4Way I didn't know how to solve using DMux itself, so I used the canonical expression for each output
