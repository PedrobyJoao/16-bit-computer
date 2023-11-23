// Bootstrap code
@256
D=A
@SP
M=D
// push return-label
@return_to_sys.init_from_Sys.init
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP - 5 - numArgs
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Sys.init
@Sys.init
0;JMP
// (return-address)
(return_to_sys.init_from_Sys.init)

//function Class1.set 0
(Class1.set)

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

@22222//pop static 0
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Class1.0
M=D

@22222//push argument 1
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

@22222//pop static 1
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Class1.1
M=D

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//return
@LCL
D=M
@R5
M=D
@R5
D=M
A=D-A
D=M
@R6
M=D
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R5
D=M
@1
A=D-A
D=M
@THAT
M=D
@R5
D=M
@2
A=D-A
D=M
@THIS
M=D
@R5
D=M
@3
A=D-A
D=M
@ARG
M=D
@R5
D=M
@4
A=D-A
D=M
@LCL
M=D
@R6
A=M
0;JMP

@22222//function Class1.get 0
(Class1.get)

@22222//push static 0
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push static 1
@Class1.1
D=M
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

@22222//return
@LCL
D=M
@R5
M=D
@R5
D=M
A=D-A
D=M
@R6
M=D
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R5
D=M
@1
A=D-A
D=M
@THAT
M=D
@R5
D=M
@2
A=D-A
D=M
@THIS
M=D
@R5
D=M
@3
A=D-A
D=M
@ARG
M=D
@R5
D=M
@4
A=D-A
D=M
@LCL
M=D
@R6
A=M
0;JMP

@22222//function Class2.set 0
(Class2.set)

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

@22222//pop static 0
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Class2.0
M=D

@22222//push argument 1
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

@22222//pop static 1
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Class2.1
M=D

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//return
@LCL
D=M
@R5
M=D
@R5
D=M
A=D-A
D=M
@R6
M=D
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R5
D=M
@1
A=D-A
D=M
@THAT
M=D
@R5
D=M
@2
A=D-A
D=M
@THIS
M=D
@R5
D=M
@3
A=D-A
D=M
@ARG
M=D
@R5
D=M
@4
A=D-A
D=M
@LCL
M=D
@R6
A=M
0;JMP

@22222//function Class2.get 0
(Class2.get)

@22222//push static 0
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push static 1
@Class2.1
D=M
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

@22222//return
@LCL
D=M
@R5
M=D
@R5
D=M
A=D-A
D=M
@R6
M=D
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R5
D=M
@1
A=D-A
D=M
@THAT
M=D
@R5
D=M
@2
A=D-A
D=M
@THIS
M=D
@R5
D=M
@3
A=D-A
D=M
@ARG
M=D
@R5
D=M
@4
A=D-A
D=M
@LCL
M=D
@R6
A=M
0;JMP

@22222//function Sys.init 0
(Sys.init)

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Class1.set 2
// push return-label
@return_to__from_Class1.set
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP - 5 - numArgs
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Class1.set
@Class1.set
0;JMP
// (return-address)
(return_to__from_Class1.set)

@22222//pop temp 0 
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
@R5
A=D+A
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D

@22222//push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Class2.set 2
// push return-label
@return_to_Class1.set_from_Class2.set
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP - 5 - numArgs
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Class2.set
@Class2.set
0;JMP
// (return-address)
(return_to_Class1.set_from_Class2.set)

@22222//pop temp 0 
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
@R5
A=D+A
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D

@22222//call Class1.get 0
// push return-label
@return_to_Class2.set_from_Class1.get
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP - 5 - numArgs
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Class1.get
@Class1.get
0;JMP
// (return-address)
(return_to_Class2.set_from_Class1.get)

@22222//call Class2.get 0
// push return-label
@return_to_Class1.get_from_Class2.get
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP - 5 - numArgs
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Class2.get
@Class2.get
0;JMP
// (return-address)
(return_to_Class1.get_from_Class2.get)

@22222//label WHILE
(Sys.init$WHILE)

@22222//goto WHILE
@Sys.init$WHILE
0;JMP

@22222