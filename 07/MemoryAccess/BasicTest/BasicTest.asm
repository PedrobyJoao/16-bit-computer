//push constant 10
@10
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
M=D

//push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop argument 2
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
@ARG
D=M
@R13
D=D+M
@R15
M=D
@R14
D=M
@R15
M=D

//pop argument 1
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
@ARG
D=M
@R13
D=D+M
@R15
M=D
@R14
D=M
@R15
M=D

//push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 6
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
@THIS
D=M
@R13
D=D+M
@R15
M=D
@R14
D=M
@R15
M=D

//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop that 5
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@5
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
M=D

//push constant 510
@510
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 6
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
@R5
A=D+A
D=A
@R15
M=D
@R14
D=M
@R15
M=D
D=M
@R13
D=D+M
@R15
M=D
@R14
D=M
@R15
M=D

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

//push that 5
@5
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

//push this 6
@6
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 6
@6
D=A
@THIS
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

//push temp 6
@6
D=A
@R5
A=D+A
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

