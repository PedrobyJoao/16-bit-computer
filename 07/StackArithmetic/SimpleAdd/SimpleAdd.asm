//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 8
@8
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

