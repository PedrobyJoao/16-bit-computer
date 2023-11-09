//push constant 3030
@3030
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@THIS
M=D

//push constant 3040
@3040
D=A
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

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 2
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
@THIS
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

//push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop that 6
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@6
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

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push pointer 1
@THAT
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

//push this 2
@2
D=A
@THIS
A=M+D
D=M
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

//push that 6
@6
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

