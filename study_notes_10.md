# Compiler

The Compiler (compiler front-end) has two tasks: Syntax Analysis and Code Generation.
The first one worries only about the syntax of the programming language itself, while the
second concerns with matching the programming languange's own syntax with the target language.

## Syntax Analysis

The Syntax Analysis is independent of the target language. The syntax analysis concerns
only about the syntax of the being-compiled programming language itself (in that case, Hack 
programming language)

It's divided in two parts:
1. Tokenizing / Lexical Analysis / Scanning
2. Parsing

### Tokenizer

It's responsible for organizing the source code in a list of `tokens` which are basically
the most fundamental `atoms` of a programming language.

```
while (x < y) {
    x = x + 1;
    // do this
}
    |
    |
Tokenizer
    |
    |
    v
while
(
x
<
y
)
{
x
=
...
;
}
```

- Tokenizer (specify other names also)
- Parser
- Context-free grammar

