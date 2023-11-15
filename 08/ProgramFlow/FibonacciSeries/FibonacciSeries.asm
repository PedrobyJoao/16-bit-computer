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

//pop pointer 1           
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

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop that 0              
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

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop that 1              
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

//push argument 0
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

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
A=M
A=A-1
D=M-D
M=D

//pop argument 0          
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

//label MAIN_LOOP_START
(MAIN_LOOP_START)

//push argument 0
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

//if-goto COMPUTE_ELEMENT 
@SP
M=M-1
A=M
D=M
M=0
@COMPUTE_ELEMENT
D;JNE

//goto END_PROGRAM        
@END_PROGRAM
0;JMP

//label COMPUTE_ELEMENT
(COMPUTE_ELEMENT)

//push that 0
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

//push that 1
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

//add
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
A=M
A=A-1
D=D+M
M=D

//pop that 2              
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

//push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
A=M
A=A-1
D=D+M
M=D

//pop pointer 1           
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

//push argument 0
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

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
A=M
A=A-1
D=M-D
M=D

//pop argument 0          
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

//goto MAIN_LOOP_START
@MAIN_LOOP_START
0;JMP

//label END_PROGRAM
(END_PROGRAM)

