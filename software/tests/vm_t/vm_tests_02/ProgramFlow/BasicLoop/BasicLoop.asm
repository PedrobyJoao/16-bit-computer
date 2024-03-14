//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0         
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
@LCL
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

//label LOOP_START
(LOOP_START)

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

//push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
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

//pop local 0	        
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
@LCL
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
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
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

//if-goto LOOP_START  
@SP
M=M-1
A=M
D=M
M=0
@LOOP_START
D;JNE

//push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

