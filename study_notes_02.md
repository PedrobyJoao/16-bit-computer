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
