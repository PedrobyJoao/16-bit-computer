// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
    
    
(WHT_START)

    // Initialize word to 0
    @word
    M=0
    // Loop through word
    (WHT_ROW)

        // PAINTING AS RAPHAEL
        // Algebraic Expression: Screen[word * 32 + col/16]
        // Actually we don't need this expression because we're painting ALL pixels
        // 2 hours later: actually I need it lol
        // 24 hours later (ofc that I didn't went contiounsly on the exercise): I actually don't need it

        @word
        D=M
        @SCREEN
        D=D+A
        A=D
        M=-1

        // If Keyboard != 0, go to Black
        @KBD
        D=M
        @WHT_START
        D;JNE

        // col++
        @col
        M=M+1

        // while col < 512, continue col
        // col - 512 < 512 - 512 ==== col - 512 < 0
        @col
        D=M
        @32
        D=D-A
        @WHT_COL
        D;JLT

        // word++
        @word
        M=M+1

        // while word < 256, continue word
        // word - 256 < 0
        @word
        D=M
        @8000
        D=D-A
        @WHT_ROW
        D;JLT
        


    // Infinite loop keeping the White screen while Key == 0
    (WHT_KEEP)
        @KBD
        D=M
        @WHT_KEEP
        D;JEQ

(COLOR)
    @KBD


(DIV_LOOP_START)
    // Initializing vars for DIV_LOOP
    @divisions
    M=0
    @sum_div
    M=0
// col / 16
(DIV_LOOP)
    // if sum_div + 16 > col, quit div_loop
    @sum_div
    D=M
    @16
    D=D+A
    @col
    D=D-M
    @END_DIV_LOOP
    D;JGE

    // add 16 to sum
    @16
    D=A
    @sum_div
    M=M+D

    // divisions++
    @divisions
    M=M+1

    @DIV_LOOP
    0;JMP

(MULT_LOOP_START)
    // Initializing vars for MULT_LOOP
    @i
    M=0
    @mult_res
    M=0
(MULT_LOOP)
    // check if i <= 32, if not jump to end
    @i
    D=M
    @32
    D=A-D
    @END_MULT_LOOP
    D;JLE

    // row + mult_res
    @mult_res
    D=M
    @row
    D=D+M
    @mult_res
    M=D

    // i++
    @i
    M=M+1

    @MULT_LOOP
    0;JMP
