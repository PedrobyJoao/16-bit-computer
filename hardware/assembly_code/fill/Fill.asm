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

    // Iterating through each Memory[N] of the RAM starting
    // From @SCREEN. The SCREEN is mapped in the RAM memory 
    // from a given point and has a consecutive number 8K
    // of words.

    // Iterate these words
    @wht_word
    M=0
    (WHT_WORD)

        // PAINTING AS RAPHAEL
        // Algebraic Expression: Screen[wht_word * 32 + col/16]
        // Actually we don't need this expression because we're painting ALL pixels
        // 2 hours later: actually I need it lol
        // 24 hours later (*crying*): I actually don't need it

        @wht_word
        D=M
        @SCREEN
        D=D+A
        A=D
        M=0

        // wht_word++
        @wht_word
        M=M+1

        // The screen's memory is mapped to a 8K memory
        // And starts at @SCREEN. @SCREEN + 1 will give
        // The next word of this memory map.
        // We must paint all words within this memory map
        // So we just have to go from @SCREEN to @SCREEN + 8192 
        // Reminder: M[n] will always be equals a 16-bit word
        @wht_word
        D=M
        @8192
        D=D-A
        @WHT_WORD
        D;JLT

        // If Keyboard != 0, go to Black
        @KBD
        D=M
        @BLK_START
        D;JNE

    // Infinite loop keeping the White screen while Key == 0
    (WHT_KEEP)
        @KBD
        D=M
        @WHT_KEEP
        D;JEQ


(BLK_START)

    // Iterating through each Memory[N] of the RAM starting
    // From @SCREEN. The SCREEN is mapped in the RAM memory 
    // from a given point and has a consecutive number 8K
    // of words.

    // Iterate these words
    @blk_word
    M=0
    (BLK_WORD)

        @blk_word
        D=M
        @SCREEN
        D=D+A
        A=D
        M=-1

        // blk_word++
        @blk_word
        M=M+1

        // The screen's memory is mapped to a 8K memory
        // And starts at @SCREEN. @SCREEN + 1 will give
        // The next word of this memory map.
        // We must paint all words within this memory map
        // So we just have to go from @SCREEN to @SCREEN + 8192 
        // Reminder: M[n] will always be equals a 16-bit word
        @blk_word
        D=M
        @8192
        D=D-A
        @BLK_WORD
        D;JLT

    // Infinite loop keeping the Blac screen while Key != 0
    (BLK_KEEP)
        @KBD
        D=M
        @BLK_KEEP
        D;JNE

    // If BLK_KEEP is done, then it's time to go to white
    @WHT_START
    0;JMP
