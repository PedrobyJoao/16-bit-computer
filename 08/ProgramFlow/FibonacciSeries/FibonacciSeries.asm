//push argument 1
@1
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop pointer 1           
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@THAT
M=D

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop that 0              
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@0
D=A
@R13
M=D
@THAT
D=M
@R13
D=D+M
@R15
M=D
@R14
D=M
@R15
A=M
M=D

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop that 1              
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@1
D=A
@R13
M=D
@THAT
D=M
@R13
D=D+M
@R15
M=D
@R14
D=M
@R15
A=M
M=D

@22222//push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//sub
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
M=D

@22222//pop argument 0          
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@0
D=A
@R13
M=D
@ARG
D=M
@R13
D=D+M
@R15
M=D
@R14
D=M
@R15
A=M
M=D

@22222//label MAIN_LOOP_START
(MAIN_LOOP_START)

@22222//push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//if-goto COMPUTE_ELEMENT 
@SP
M=M-1
A=M
D=M
M=0
@COMPUTE_ELEMENT
D;JNE

@22222//goto END_PROGRAM        
@END_PROGRAM
0;JMP

@22222//label COMPUTE_ELEMENT
(COMPUTE_ELEMENT)

@22222//push that 0
@0
D=A
@THAT
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push that 1
@1
D=A
@THAT
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//add
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D+M
M=D

@22222//pop that 2              
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@2
D=A
@R13
M=D
@THAT
D=M
@R13
D=D+M
@R15
M=D
@R14
D=M
@R15
A=M
M=D

@22222//push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//add
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D+M
M=D

@22222//pop pointer 1           
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@THAT
M=D

@22222//push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//sub
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
M=D

@22222//pop argument 0          
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@0
D=A
@R13
M=D
@ARG
D=M
@R13
D=D+M
@R15
M=D
@R14
D=M
@R15
A=M
M=D

@22222//goto MAIN_LOOP_START
@MAIN_LOOP_START
0;JMP

@22222//label END_PROGRAM
(END_PROGRAM)

@22222