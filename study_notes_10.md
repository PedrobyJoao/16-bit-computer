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

### Grammar rules

Grammar rules of a formal language define the syntax of a language, specifying how tokens can be combined in **constructs**.
Within the grammar rules, we have the concept of terminals and non-terminals. 

Context-free grammar is a set of rules that dictates how syntatic elements in a language can be formed by simpler ones
(it defines how to deal with non-terminals and terminals)

- Terminals are basically the atoms of the language, therefore a token. So it can not be decomposed in simpler forms
- Non-terminal: is a group of terminals which devises some syntatical meaning. It can be decomposed recursively in
more non-terminals if possible, until there are only terminals.

### Parser

After the lexical anlysis/tokenization part, the parser will be responsible to match the tokens
with the language grammar.

Context-free grammar (it seems that it also can be called derivation rules) and how compilers deal with 
non-terminals and terminals parsing is usually represented by a tree-like data structure that we can call 
parse tree or derivation tree.

There are several ways of parsing non-terminals and terminals. Hack compiler will use the top-down approach, also called
**Recursive Descent parsing**. The parsing process starts from the non-terminals, and goes on until a terminal is processed.

#### LL(1) Grammar

With the top-down approach and considering that one token is analyzed at a time, **sometimes** it's not possible to know 
which kind of non-terminal is being analyzed, and therefore it can not be processed with this method.

LL(1) grammar are the formal languages which this is solved by having the first token being enough to define which kind of next
non-terminal is down the tree. So just one look ahead is necessary, hence `1` in `LL(1)`

With non LL(1) grammars, compilers have to do more than 1 look ahead to identify the non-terminal
