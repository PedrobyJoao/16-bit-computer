// Bootstrap code
@256
D=A
@SP
M=D
// push return-label
@return_to_sys.init_from_Sys.init_a2e8d56bf34984e4d433e
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
(return_to_sys.init_from_Sys.init_a2e8d56bf34984e4d433e)

//function Main.fibonacci 0
(Main.fibonacci)

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

@22222//lt                     
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Main.fibonacci$a28dcfc17618923f9b58a
D;JGE
@SP
A=M-1
M=-1
@Main.fibonacci$after-a28dcfc17618923f9b58a
0;JMP
(Main.fibonacci$a28dcfc17618923f9b58a)
@SP
A=M-1
M=0
(Main.fibonacci$after-a28dcfc17618923f9b58a)

@22222//if-goto IF_TRUE
@SP
M=M-1
A=M
D=M
M=0
@Main.fibonacci$IF_TRUE
D;JNE

@22222//goto IF_FALSE
@Main.fibonacci$IF_FALSE
0;JMP

@22222//label IF_TRUE          
(Main.fibonacci$IF_TRUE)

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

@22222//return
@LCL
D=M
@R7
M=D
@R7
D=M
@5
A=D-A
D=M
@R8
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
@R7
D=M
@1
A=D-A
D=M
@THAT
M=D
@R7
D=M
@2
A=D-A
D=M
@THIS
M=D
@R7
D=M
@3
A=D-A
D=M
@ARG
M=D
@R7
D=M
@4
A=D-A
D=M
@LCL
M=D
@R8
A=M
0;JMP

@22222//label IF_FALSE         
(Main.fibonacci$IF_FALSE)

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

@22222//call Main.fibonacci 1  
// push return-label
@return_to_sys.init_from_Main.fibonacci_a48f98513af02201533dc
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
@1
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Main.fibonacci
@Main.fibonacci
0;JMP
// (return-address)
(return_to_sys.init_from_Main.fibonacci_a48f98513af02201533dc)

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

@22222//call Main.fibonacci 1  
// push return-label
@return_to_Main.fibonacci_from_Main.fibonacci_ad78c3e7f3fe98d183fbd
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
@1
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Main.fibonacci
@Main.fibonacci
0;JMP
// (return-address)
(return_to_Main.fibonacci_from_Main.fibonacci_ad78c3e7f3fe98d183fbd)

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

@22222//return
@LCL
D=M
@R7
M=D
@R7
D=M
@5
A=D-A
D=M
@R8
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
@R7
D=M
@1
A=D-A
D=M
@THAT
M=D
@R7
D=M
@2
A=D-A
D=M
@THIS
M=D
@R7
D=M
@3
A=D-A
D=M
@ARG
M=D
@R7
D=M
@4
A=D-A
D=M
@LCL
M=D
@R8
A=M
0;JMP

@22222//function Sys.init 0
(Sys.init)

@22222//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Main.fibonacci 1   
// push return-label
@return_to_Main.fibonacci_from_Main.fibonacci_a77e9f54a9614e1f69b61
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
@1
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Main.fibonacci
@Main.fibonacci
0;JMP
// (return-address)
(return_to_Main.fibonacci_from_Main.fibonacci_a77e9f54a9614e1f69b61)

@22222//label WHILE
(Sys.init$WHILE)

@22222//goto WHILE              
@Sys.init$WHILE
0;JMP

@22222