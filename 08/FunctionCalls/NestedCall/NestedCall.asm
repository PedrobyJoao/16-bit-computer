// Bootstrap code
@256
D=A
@SP
M=D
// push return-label
@return_to_sys.init_from_Sys.init_a57174e56b577d376c93e
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
(return_to_sys.init_from_Sys.init_a57174e56b577d376c93e)

//function Sys.init 0
(Sys.init)

@22222//push constant 4000	
@4000
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop pointer 0
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

@22222//push constant 5000
@5000
D=A
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

@22222//call Sys.main 0
// push return-label
@return_to_Sys.init_from_Sys.main_aa2da5398a022806b7a59
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
// goto Sys.main
@Sys.main
0;JMP
// (return-address)
(return_to_Sys.init_from_Sys.main_aa2da5398a022806b7a59)

@22222//pop temp 1
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

@22222//label LOOP
(Sys.init$LOOP)

@22222//goto LOOP
@Sys.init$LOOP
0;JMP

@22222//function Sys.main 5
(Sys.main)
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1

@22222//push constant 4001
@4001
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop pointer 0
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

@22222//push constant 5001
@5001
D=A
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

@22222//push constant 200
@200
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 1
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

@22222//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 2
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 3
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@3
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

@22222//push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.add12 1
// push return-label
@return_to_Sys.main_from_Sys.add12_a5371dfb4909e6f28f486
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
// goto Sys.add12
@Sys.add12
0;JMP
// (return-address)
(return_to_Sys.main_from_Sys.add12_a5371dfb4909e6f28f486)

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

@22222//push local 0
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

@22222//push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push local 2
@2
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push local 3
@3
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push local 4
@4
D=A
@LCL
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

@22222//function Sys.add12 0
(Sys.add12)

@22222//push constant 4002
@4002
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop pointer 0
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

@22222//push constant 5002
@5002
D=A
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

@22222//push constant 12
@12
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

@22222