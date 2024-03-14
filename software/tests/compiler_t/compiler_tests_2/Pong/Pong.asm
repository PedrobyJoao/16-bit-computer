// Bootstrap code
@256
D=A
@SP
M=D
// push return-label
@return_to_sys.init_from_Sys.init_ab8f4369f95c3b46d8ac6
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
(return_to_sys.init_from_Sys.init_ab8f4369f95c3b46d8ac6)

//function Array.new 0
(Array.new)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Array.new$a9e8b15b367d2061cc655
D;JLE
@SP
A=M-1
M=-1
@Array.new$after-a9e8b15b367d2061cc655
0;JMP
(Array.new$a9e8b15b367d2061cc655)
@SP
A=M-1
M=0
(Array.new$after-a9e8b15b367d2061cc655)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Array.new$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Array.new$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Array.new$IF_TRUE0)

@22222//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Sys.init_from_Sys.error_ab97a7bde38c437b21dc9
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Sys.init_from_Sys.error_ab97a7bde38c437b21dc9)

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

@22222//label IF_FALSE0
(Array.new$IF_FALSE0)

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

@22222//call Memory.alloc 1
// push return-label
@return_to_Sys.error_from_Memory.alloc_a4a64815ad3edf969f5d0
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
// goto Memory.alloc
@Memory.alloc
0;JMP
// (return-address)
(return_to_Sys.error_from_Memory.alloc_a4a64815ad3edf969f5d0)

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

@22222//function Array.dispose 0
(Array.dispose)

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

@22222//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Memory.deAlloc 1
// push return-label
@return_to_Sys.error_from_Memory.deAlloc_aedbafa5629bc45c43913
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
// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
// (return-address)
(return_to_Sys.error_from_Memory.deAlloc_aedbafa5629bc45c43913)

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

@22222//function Ball.new 0
(Ball.new)

@22222//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Memory.alloc 1
// push return-label
@return_to_Sys.error_from_Memory.alloc_a497d26d3263cdd18e842
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
// goto Memory.alloc
@Memory.alloc
0;JMP
// (return-address)
(return_to_Sys.error_from_Memory.alloc_a497d26d3263cdd18e842)

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

@22222//pop this 0
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

@22222//pop this 1
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 10
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@10
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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
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

@22222//pop this 11
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@11
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

@22222//push argument 4
@4
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 12
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@12
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

@22222//push argument 5
@5
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
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

@22222//pop this 13
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@13
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 14
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@14
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

@22222//call show 0
// push return-label
@return_to_Memory.alloc_from_show_a6d152bb88a25c6a16ebf
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
// goto show
@show
0;JMP
// (return-address)
(return_to_Memory.alloc_from_show_a6d152bb88a25c6a16ebf)

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

@22222//push pointer 0
@THIS
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

@22222//function Ball.dispose 0
(Ball.dispose)

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

@22222//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Memory.deAlloc 1
// push return-label
@return_to_Memory.alloc_from_Memory.deAlloc_a17e4cd31d84246bae773
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
// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
// (return-address)
(return_to_Memory.alloc_from_Memory.deAlloc_a17e4cd31d84246bae773)

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

@22222//function Ball.show 0
(Ball.show)

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//call Screen.setColor 1
// push return-label
@return_to_Memory.alloc_from_Screen.setColor_afd952d946b40c4af526c
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
// goto Screen.setColor
@Screen.setColor
0;JMP
// (return-address)
(return_to_Memory.alloc_from_Screen.setColor_afd952d946b40c4af526c)

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

@22222//call draw 0
// push return-label
@return_to_Screen.setColor_from_draw_aa1f27af585a43015bc0b
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
// goto draw
@draw
0;JMP
// (return-address)
(return_to_Screen.setColor_from_draw_aa1f27af585a43015bc0b)

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

@22222//function Ball.hide 0
(Ball.hide)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Screen.setColor 1
// push return-label
@return_to_Screen.setColor_from_Screen.setColor_ac2c8f081dad8c7365a6b
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
// goto Screen.setColor
@Screen.setColor
0;JMP
// (return-address)
(return_to_Screen.setColor_from_Screen.setColor_ac2c8f081dad8c7365a6b)

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

@22222//call draw 0
// push return-label
@return_to_Screen.setColor_from_draw_a0e6d42519265caf12b32
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
// goto draw
@draw
0;JMP
// (return-address)
(return_to_Screen.setColor_from_draw_a0e6d42519265caf12b32)

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

@22222//function Ball.draw 0
(Ball.draw)

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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 5
@5
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 5
@5
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

@22222//call Screen.drawRectangle 4
// push return-label
@return_to_Screen.setColor_from_Screen.drawRectangle_a24726e232f79cd1c5864
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
@4
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
// (return-address)
(return_to_Screen.setColor_from_Screen.drawRectangle_a24726e232f79cd1c5864)

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

@22222//function Ball.getLeft 0
(Ball.getLeft)

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

@22222//push this 0
@0
D=A
@THIS
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

@22222//function Ball.getRight 0
(Ball.getRight)

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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 5
@5
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

@22222//function Ball.setDestination 3
(Ball.setDestination)
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

@22222//push this 0
@0
D=A
@THIS
A=M+D
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

@22222//pop this 2
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 1
@1
D=A
@THIS
A=M+D
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

@22222//pop this 3
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

@22222//push this 2
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

@22222//call Math.abs 1
// push return-label
@return_to_Screen.setColor_from_Math.abs_a9ddd452220c89b8e611d
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
// goto Math.abs
@Math.abs
0;JMP
// (return-address)
(return_to_Screen.setColor_from_Math.abs_a9ddd452220c89b8e611d)

@22222//pop local 0
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

@22222//push this 3
@3
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.abs 1
// push return-label
@return_to_Math.abs_from_Math.abs_adfd6155b11b754ab82b2
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
// goto Math.abs
@Math.abs
0;JMP
// (return-address)
(return_to_Math.abs_from_Math.abs_adfd6155b11b754ab82b2)

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
@Ball.setDestination$a024077bbc7b355c82ebe
D;JGE
@SP
A=M-1
M=-1
@Ball.setDestination$after-a024077bbc7b355c82ebe
0;JMP
(Ball.setDestination$a024077bbc7b355c82ebe)
@SP
A=M-1
M=0
(Ball.setDestination$after-a024077bbc7b355c82ebe)

@22222//pop this 7
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@7
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

@22222//push this 7
@7
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_0
@SP
M=M-1
A=M
D=M
M=0
@Ball.setDestination$label_0
D;JNE

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

@22222//pop local 0
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
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
@Ball.setDestination$ae8cff69c02648982675d
D;JGE
@SP
A=M-1
M=-1
@Ball.setDestination$after-ae8cff69c02648982675d
0;JMP
(Ball.setDestination$ae8cff69c02648982675d)
@SP
A=M-1
M=0
(Ball.setDestination$after-ae8cff69c02648982675d)

@22222//pop this 8
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@8
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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Ball.setDestination$a68b8de091b4300c07c48
D;JGE
@SP
A=M-1
M=-1
@Ball.setDestination$after-a68b8de091b4300c07c48
0;JMP
(Ball.setDestination$a68b8de091b4300c07c48)
@SP
A=M-1
M=0
(Ball.setDestination$after-a68b8de091b4300c07c48)

@22222//pop this 9
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@9
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

@22222//goto label_1
@Ball.setDestination$label_1
0;JMP

@22222//label label_0
(Ball.setDestination$label_0)

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Ball.setDestination$aea1d811f9fc6764c490d
D;JGE
@SP
A=M-1
M=-1
@Ball.setDestination$after-aea1d811f9fc6764c490d
0;JMP
(Ball.setDestination$aea1d811f9fc6764c490d)
@SP
A=M-1
M=0
(Ball.setDestination$after-aea1d811f9fc6764c490d)

@22222//pop this 8
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@8
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
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
@Ball.setDestination$accfcc76bdf784050ff64
D;JGE
@SP
A=M-1
M=-1
@Ball.setDestination$after-accfcc76bdf784050ff64
0;JMP
(Ball.setDestination$accfcc76bdf784050ff64)
@SP
A=M-1
M=0
(Ball.setDestination$after-accfcc76bdf784050ff64)

@22222//pop this 9
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@9
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

@22222//label label_1
(Ball.setDestination$label_1)

@22222//push constant 2
@2
D=A
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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.abs_from_Math.multiply_adee264b831bac199c953
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.abs_from_Math.multiply_adee264b831bac199c953)

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

@22222//pop this 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//push constant 2
@2
D=A
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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_a23b578ed71fec7e5a364
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_a23b578ed71fec7e5a364)

@22222//pop this 5
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

@22222//push constant 2
@2
D=A
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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_a9d57ca3b4d70144e5e86
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_a9d57ca3b4d70144e5e86)

@22222//pop this 6
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
A=M
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

@22222//function Ball.move 0
(Ball.move)

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

@22222//call hide 0
// push return-label
@return_to_Math.multiply_from_hide_aaa99774a5fbd76801ca4
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
// goto hide
@hide
0;JMP
// (return-address)
(return_to_Math.multiply_from_hide_aaa99774a5fbd76801ca4)

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

@22222//push this 4
@4
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
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
@Ball.move$ae535a48b5c67b4e87655
D;JGE
@SP
A=M-1
M=-1
@Ball.move$after-ae535a48b5c67b4e87655
0;JMP
(Ball.move$ae535a48b5c67b4e87655)
@SP
A=M-1
M=0
(Ball.move$after-ae535a48b5c67b4e87655)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_2
@SP
M=M-1
A=M
D=M
M=0
@Ball.move$label_2
D;JNE

@22222//push this 4
@4
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 5
@5
D=A
@THIS
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

@22222//pop this 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//goto label_3
@Ball.move$label_3
0;JMP

@22222//label label_2
(Ball.move$label_2)

@22222//push this 4
@4
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 6
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

@22222//pop this 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//push this 9
@9
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_4
@SP
M=M-1
A=M
D=M
M=0
@Ball.move$label_4
D;JNE

@22222//push this 7
@7
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_6
@SP
M=M-1
A=M
D=M
M=0
@Ball.move$label_6
D;JNE

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
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

@22222//pop this 0
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

@22222//goto label_7
@Ball.move$label_7
0;JMP

@22222//label label_6
(Ball.move$label_6)

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
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

@22222//pop this 1
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

@22222//label label_7
(Ball.move$label_7)

@22222//goto label_5
@Ball.move$label_5
0;JMP

@22222//label label_4
(Ball.move$label_4)

@22222//push this 7
@7
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_8
@SP
M=M-1
A=M
D=M
M=0
@Ball.move$label_8
D;JNE

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
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

@22222//pop this 0
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

@22222//goto label_9
@Ball.move$label_9
0;JMP

@22222//label label_8
(Ball.move$label_8)

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
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

@22222//pop this 1
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

@22222//label label_9
(Ball.move$label_9)

@22222//label label_5
(Ball.move$label_5)

@22222//label label_3
(Ball.move$label_3)

@22222//push this 8
@8
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_10
@SP
M=M-1
A=M
D=M
M=0
@Ball.move$label_10
D;JNE

@22222//push this 7
@7
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_12
@SP
M=M-1
A=M
D=M
M=0
@Ball.move$label_12
D;JNE

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
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

@22222//pop this 1
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

@22222//goto label_13
@Ball.move$label_13
0;JMP

@22222//label label_12
(Ball.move$label_12)

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
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

@22222//pop this 0
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

@22222//label label_13
(Ball.move$label_13)

@22222//goto label_11
@Ball.move$label_11
0;JMP

@22222//label label_10
(Ball.move$label_10)

@22222//push this 7
@7
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_14
@SP
M=M-1
A=M
D=M
M=0
@Ball.move$label_14
D;JNE

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
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

@22222//pop this 1
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

@22222//goto label_15
@Ball.move$label_15
0;JMP

@22222//label label_14
(Ball.move$label_14)

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
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

@22222//pop this 0
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

@22222//label label_15
(Ball.move$label_15)

@22222//label label_11
(Ball.move$label_11)

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 10
@10
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Ball.move$aac93488072428a8906e0
D;JLE
@SP
A=M-1
M=-1
@Ball.move$after-aac93488072428a8906e0
0;JMP
(Ball.move$aac93488072428a8906e0)
@SP
A=M-1
M=0
(Ball.move$after-aac93488072428a8906e0)

@22222//not
@SP
A=M-1
M=!M

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_16
@SP
M=M-1
A=M
D=M
M=0
@Ball.move$label_16
D;JNE

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 14
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@14
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

@22222//push this 10
@10
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 0
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

@22222//goto label_17
@Ball.move$label_17
0;JMP

@22222//label label_16
(Ball.move$label_16)

@22222//label label_17
(Ball.move$label_17)

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 11
@11
D=A
@THIS
A=M+D
D=M
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
@Ball.move$affa7f60b6cc1fbfd0a5f
D;JGE
@SP
A=M-1
M=-1
@Ball.move$after-affa7f60b6cc1fbfd0a5f
0;JMP
(Ball.move$affa7f60b6cc1fbfd0a5f)
@SP
A=M-1
M=0
(Ball.move$after-affa7f60b6cc1fbfd0a5f)

@22222//not
@SP
A=M-1
M=!M

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_18
@SP
M=M-1
A=M
D=M
M=0
@Ball.move$label_18
D;JNE

@22222//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 14
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@14
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

@22222//push this 11
@11
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 0
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

@22222//goto label_19
@Ball.move$label_19
0;JMP

@22222//label label_18
(Ball.move$label_18)

@22222//label label_19
(Ball.move$label_19)

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 12
@12
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Ball.move$aa8f772307e6ff68227fc
D;JLE
@SP
A=M-1
M=-1
@Ball.move$after-aa8f772307e6ff68227fc
0;JMP
(Ball.move$aa8f772307e6ff68227fc)
@SP
A=M-1
M=0
(Ball.move$after-aa8f772307e6ff68227fc)

@22222//not
@SP
A=M-1
M=!M

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_20
@SP
M=M-1
A=M
D=M
M=0
@Ball.move$label_20
D;JNE

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 14
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@14
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

@22222//push this 12
@12
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 1
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

@22222//goto label_21
@Ball.move$label_21
0;JMP

@22222//label label_20
(Ball.move$label_20)

@22222//label label_21
(Ball.move$label_21)

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 13
@13
D=A
@THIS
A=M+D
D=M
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
@Ball.move$a7e76851074cf43f287e7
D;JGE
@SP
A=M-1
M=-1
@Ball.move$after-a7e76851074cf43f287e7
0;JMP
(Ball.move$a7e76851074cf43f287e7)
@SP
A=M-1
M=0
(Ball.move$after-a7e76851074cf43f287e7)

@22222//not
@SP
A=M-1
M=!M

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_22
@SP
M=M-1
A=M
D=M
M=0
@Ball.move$label_22
D;JNE

@22222//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 14
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@14
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

@22222//push this 13
@13
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 1
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

@22222//goto label_23
@Ball.move$label_23
0;JMP

@22222//label label_22
(Ball.move$label_22)

@22222//label label_23
(Ball.move$label_23)

@22222//call show 0
// push return-label
@return_to_hide_from_show_a8a3b0bf7241e9d95a3ff
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
// goto show
@show
0;JMP
// (return-address)
(return_to_hide_from_show_a8a3b0bf7241e9d95a3ff)

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

@22222//push this 14
@14
D=A
@THIS
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

@22222//function Ball.bounce 5
(Ball.bounce)
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

@22222//push this 2
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

@22222//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.divide 2
// push return-label
@return_to_hide_from_Math.divide_a87db25b82a24debdd6c4
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_hide_from_Math.divide_a87db25b82a24debdd6c4)

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

@22222//push this 3
@3
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.divide 2
// push return-label
@return_to_Math.divide_from_Math.divide_a245eaec4a79e044fcf08
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.divide_a245eaec4a79e044fcf08)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Ball.bounce$af4e4078e96047e740cbb
D;JNE
@SP
A=M-1
M=-1
@Ball.bounce$after-af4e4078e96047e740cbb
0;JMP
(Ball.bounce$af4e4078e96047e740cbb)
@SP
A=M-1
M=0
(Ball.bounce$after-af4e4078e96047e740cbb)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_24
@SP
M=M-1
A=M
D=M
M=0
@Ball.bounce$label_24
D;JNE

@22222//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//goto label_25
@Ball.bounce$label_25
0;JMP

@22222//label label_24
(Ball.bounce$label_24)

@22222//push this 2
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

@22222//push constant 0
@0
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
@Ball.bounce$a02eb20d15f5a89d24c37
D;JGE
@SP
A=M-1
M=-1
@Ball.bounce$after-a02eb20d15f5a89d24c37
0;JMP
(Ball.bounce$a02eb20d15f5a89d24c37)
@SP
A=M-1
M=0
(Ball.bounce$after-a02eb20d15f5a89d24c37)

@22222//not
@SP
A=M-1
M=!M

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Ball.bounce$a98c77e7909eb5e92e867
D;JNE
@SP
A=M-1
M=-1
@Ball.bounce$after-a98c77e7909eb5e92e867
0;JMP
(Ball.bounce$a98c77e7909eb5e92e867)
@SP
A=M-1
M=0
(Ball.bounce$after-a98c77e7909eb5e92e867)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//push this 2
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

@22222//push constant 0
@0
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
@Ball.bounce$aa2b7b3915aed6dab200b
D;JGE
@SP
A=M-1
M=-1
@Ball.bounce$after-aa2b7b3915aed6dab200b
0;JMP
(Ball.bounce$aa2b7b3915aed6dab200b)
@SP
A=M-1
M=0
(Ball.bounce$after-aa2b7b3915aed6dab200b)

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Ball.bounce$a562f34c0c1aed816fe29
D;JNE
@SP
A=M-1
M=-1
@Ball.bounce$after-a562f34c0c1aed816fe29
0;JMP
(Ball.bounce$a562f34c0c1aed816fe29)
@SP
A=M-1
M=0
(Ball.bounce$after-a562f34c0c1aed816fe29)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_26
@SP
M=M-1
A=M
D=M
M=0
@Ball.bounce$label_26
D;JNE

@22222//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//goto label_27
@Ball.bounce$label_27
0;JMP

@22222//label label_26
(Ball.bounce$label_26)

@22222//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//label label_27
(Ball.bounce$label_27)

@22222//label label_25
(Ball.bounce$label_25)

@22222//push this 14
@14
D=A
@THIS
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

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Ball.bounce$ab36606552cdff2e29688
D;JNE
@SP
A=M-1
M=-1
@Ball.bounce$after-ab36606552cdff2e29688
0;JMP
(Ball.bounce$ab36606552cdff2e29688)
@SP
A=M-1
M=0
(Ball.bounce$after-ab36606552cdff2e29688)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_28
@SP
M=M-1
A=M
D=M
M=0
@Ball.bounce$label_28
D;JNE

@22222//push constant 506
@506
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 0
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

@22222//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_ad21a21a22e3aff9e2b3e
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_ad21a21a22e3aff9e2b3e)

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

@22222//call Math.divide 2
// push return-label
@return_to_Math.multiply_from_Math.divide_a328f0203df7e2814d8fe
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.divide_a328f0203df7e2814d8fe)

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

@22222//push this 1
@1
D=A
@THIS
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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_a07acb7028592897ac505
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_a07acb7028592897ac505)

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

@22222//goto label_29
@Ball.bounce$label_29
0;JMP

@22222//label label_28
(Ball.bounce$label_28)

@22222//push this 14
@14
D=A
@THIS
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

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Ball.bounce$acca585ffc70689017d86
D;JNE
@SP
A=M-1
M=-1
@Ball.bounce$after-acca585ffc70689017d86
0;JMP
(Ball.bounce$acca585ffc70689017d86)
@SP
A=M-1
M=0
(Ball.bounce$after-acca585ffc70689017d86)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_30
@SP
M=M-1
A=M
D=M
M=0
@Ball.bounce$label_30
D;JNE

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 0
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

@22222//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_acea6f1f59c6d7f02366c
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_acea6f1f59c6d7f02366c)

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

@22222//call Math.divide 2
// push return-label
@return_to_Math.multiply_from_Math.divide_a106a1289937bdcc3afbd
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.divide_a106a1289937bdcc3afbd)

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

@22222//push this 1
@1
D=A
@THIS
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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_a470cfe861eaca4d10521
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_a470cfe861eaca4d10521)

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

@22222//goto label_31
@Ball.bounce$label_31
0;JMP

@22222//label label_30
(Ball.bounce$label_30)

@22222//push this 14
@14
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Ball.bounce$ab966a59e8714ed5773e9
D;JNE
@SP
A=M-1
M=-1
@Ball.bounce$after-ab966a59e8714ed5773e9
0;JMP
(Ball.bounce$ab966a59e8714ed5773e9)
@SP
A=M-1
M=0
(Ball.bounce$after-ab966a59e8714ed5773e9)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_32
@SP
M=M-1
A=M
D=M
M=0
@Ball.bounce$label_32
D;JNE

@22222//push constant 250
@250
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

@22222//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_ae5fcd4a2190a4b3f1057
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_ae5fcd4a2190a4b3f1057)

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

@22222//call Math.divide 2
// push return-label
@return_to_Math.multiply_from_Math.divide_a560fe1f05f29c58e0963
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.divide_a560fe1f05f29c58e0963)

@22222//pop local 0
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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_a7181581e595582a0b4c1
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_a7181581e595582a0b4c1)

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

@22222//pop local 0
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

@22222//goto label_33
@Ball.bounce$label_33
0;JMP

@22222//label label_32
(Ball.bounce$label_32)

@22222//push constant 0
@0
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

@22222//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_a00a5c38c4a74285cd956
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_a00a5c38c4a74285cd956)

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

@22222//call Math.divide 2
// push return-label
@return_to_Math.multiply_from_Math.divide_a0ed0e04bd1cd4e4f8b07
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.divide_a0ed0e04bd1cd4e4f8b07)

@22222//pop local 0
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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_a47d55291f34c4bf03d15
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_a47d55291f34c4bf03d15)

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

@22222//pop local 0
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

@22222//label label_33
(Ball.bounce$label_33)

@22222//label label_31
(Ball.bounce$label_31)

@22222//label label_29
(Ball.bounce$label_29)

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

@22222//call setDestination 2
// push return-label
@return_to_Math.multiply_from_setDestination_a91b51e80bcae6a92a035
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
// goto setDestination
@setDestination
0;JMP
// (return-address)
(return_to_Math.multiply_from_setDestination_a91b51e80bcae6a92a035)

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

@22222//function Bat.new 0
(Bat.new)

@22222//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Memory.alloc 1
// push return-label
@return_to_Math.multiply_from_Memory.alloc_aca8d5d4c3e75bf1887c0
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
// goto Memory.alloc
@Memory.alloc
0;JMP
// (return-address)
(return_to_Math.multiply_from_Memory.alloc_aca8d5d4c3e75bf1887c0)

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

@22222//pop this 0
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

@22222//pop this 1
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 2
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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 3
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

@22222//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//call show 0
// push return-label
@return_to_Memory.alloc_from_show_a59a744d346e581e9af2b
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
// goto show
@show
0;JMP
// (return-address)
(return_to_Memory.alloc_from_show_a59a744d346e581e9af2b)

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

@22222//push pointer 0
@THIS
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

@22222//function Bat.dispose 0
(Bat.dispose)

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

@22222//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Memory.deAlloc 1
// push return-label
@return_to_Memory.alloc_from_Memory.deAlloc_a2e793e4282203bb8c8e6
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
// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
// (return-address)
(return_to_Memory.alloc_from_Memory.deAlloc_a2e793e4282203bb8c8e6)

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

@22222//function Bat.show 0
(Bat.show)

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//call Screen.setColor 1
// push return-label
@return_to_Memory.alloc_from_Screen.setColor_aefdd162c1f58b902a716
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
// goto Screen.setColor
@Screen.setColor
0;JMP
// (return-address)
(return_to_Memory.alloc_from_Screen.setColor_aefdd162c1f58b902a716)

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

@22222//call draw 0
// push return-label
@return_to_Screen.setColor_from_draw_a5198bd0256c7071b797a
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
// goto draw
@draw
0;JMP
// (return-address)
(return_to_Screen.setColor_from_draw_a5198bd0256c7071b797a)

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

@22222//function Bat.hide 0
(Bat.hide)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Screen.setColor 1
// push return-label
@return_to_Screen.setColor_from_Screen.setColor_adae6441a165b8ff56472
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
// goto Screen.setColor
@Screen.setColor
0;JMP
// (return-address)
(return_to_Screen.setColor_from_Screen.setColor_adae6441a165b8ff56472)

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

@22222//call draw 0
// push return-label
@return_to_Screen.setColor_from_draw_a027ed18519ed7dae9ef2
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
// goto draw
@draw
0;JMP
// (return-address)
(return_to_Screen.setColor_from_draw_a027ed18519ed7dae9ef2)

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

@22222//function Bat.draw 0
(Bat.draw)

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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 2
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 3
@3
D=A
@THIS
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

@22222//call Screen.drawRectangle 4
// push return-label
@return_to_Screen.setColor_from_Screen.drawRectangle_a9ac95628448c373eb09b
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
@4
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
// (return-address)
(return_to_Screen.setColor_from_Screen.drawRectangle_a9ac95628448c373eb09b)

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

@22222//function Bat.setDirection 0
(Bat.setDirection)

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

@22222//pop this 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//function Bat.getLeft 0
(Bat.getLeft)

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

@22222//push this 0
@0
D=A
@THIS
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

@22222//function Bat.getRight 0
(Bat.getRight)

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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 2
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

@22222//function Bat.setWidth 0
(Bat.setWidth)

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

@22222//call hide 0
// push return-label
@return_to_Screen.setColor_from_hide_a9db5722e6001e8731260
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
// goto hide
@hide
0;JMP
// (return-address)
(return_to_Screen.setColor_from_hide_a9db5722e6001e8731260)

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

@22222//pop this 2
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

@22222//call show 0
// push return-label
@return_to_hide_from_show_a6dd2bbe8185234e4221c
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
// goto show
@show
0;JMP
// (return-address)
(return_to_hide_from_show_a6dd2bbe8185234e4221c)

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

@22222//function Bat.move 0
(Bat.move)

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

@22222//push this 4
@4
D=A
@THIS
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

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Bat.move$a3d168d7b9334ebe5a1ae
D;JNE
@SP
A=M-1
M=-1
@Bat.move$after-a3d168d7b9334ebe5a1ae
0;JMP
(Bat.move$a3d168d7b9334ebe5a1ae)
@SP
A=M-1
M=0
(Bat.move$after-a3d168d7b9334ebe5a1ae)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_0
@SP
M=M-1
A=M
D=M
M=0
@Bat.move$label_0
D;JNE

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
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

@22222//pop this 0
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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
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
@Bat.move$a99f3edcf6192114cf9a5
D;JGE
@SP
A=M-1
M=-1
@Bat.move$after-a99f3edcf6192114cf9a5
0;JMP
(Bat.move$a99f3edcf6192114cf9a5)
@SP
A=M-1
M=0
(Bat.move$after-a99f3edcf6192114cf9a5)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_2
@SP
M=M-1
A=M
D=M
M=0
@Bat.move$label_2
D;JNE

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 0
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

@22222//goto label_3
@Bat.move$label_3
0;JMP

@22222//label label_2
(Bat.move$label_2)

@22222//label label_3
(Bat.move$label_3)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Screen.setColor 1
// push return-label
@return_to_hide_from_Screen.setColor_a9473e3e742b86d462723
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
// goto Screen.setColor
@Screen.setColor
0;JMP
// (return-address)
(return_to_hide_from_Screen.setColor_a9473e3e742b86d462723)

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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 2
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 2
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

@22222//push constant 4
@4
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 3
@3
D=A
@THIS
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

@22222//call Screen.drawRectangle 4
// push return-label
@return_to_Screen.setColor_from_Screen.drawRectangle_ab3419e043ff91d3cfa3d
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
@4
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
// (return-address)
(return_to_Screen.setColor_from_Screen.drawRectangle_ab3419e043ff91d3cfa3d)

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//call Screen.setColor 1
// push return-label
@return_to_Screen.drawRectangle_from_Screen.setColor_a8b2106cc01532d0a207b
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
// goto Screen.setColor
@Screen.setColor
0;JMP
// (return-address)
(return_to_Screen.drawRectangle_from_Screen.setColor_a8b2106cc01532d0a207b)

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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 3
@3
D=A
@THIS
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

@22222//call Screen.drawRectangle 4
// push return-label
@return_to_Screen.setColor_from_Screen.drawRectangle_a4a252d22cd02fd2cb714
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
@4
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
// (return-address)
(return_to_Screen.setColor_from_Screen.drawRectangle_a4a252d22cd02fd2cb714)

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

@22222//goto label_1
@Bat.move$label_1
0;JMP

@22222//label label_0
(Bat.move$label_0)

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
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

@22222//pop this 0
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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 2
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

@22222//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Bat.move$ab1040d0e2397181bc659
D;JLE
@SP
A=M-1
M=-1
@Bat.move$after-ab1040d0e2397181bc659
0;JMP
(Bat.move$ab1040d0e2397181bc659)
@SP
A=M-1
M=0
(Bat.move$after-ab1040d0e2397181bc659)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_4
@SP
M=M-1
A=M
D=M
M=0
@Bat.move$label_4
D;JNE

@22222//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 2
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

@22222//pop this 0
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

@22222//goto label_5
@Bat.move$label_5
0;JMP

@22222//label label_4
(Bat.move$label_4)

@22222//label label_5
(Bat.move$label_5)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Screen.setColor 1
// push return-label
@return_to_Screen.drawRectangle_from_Screen.setColor_a0daa173b54668ff3d129
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
// goto Screen.setColor
@Screen.setColor
0;JMP
// (return-address)
(return_to_Screen.drawRectangle_from_Screen.setColor_a0daa173b54668ff3d129)

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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 0
@0
D=A
@THIS
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 3
@3
D=A
@THIS
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

@22222//call Screen.drawRectangle 4
// push return-label
@return_to_Screen.setColor_from_Screen.drawRectangle_a95e70e2199b0da3c9125
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
@4
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
// (return-address)
(return_to_Screen.setColor_from_Screen.drawRectangle_a95e70e2199b0da3c9125)

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//call Screen.setColor 1
// push return-label
@return_to_Screen.drawRectangle_from_Screen.setColor_ae43f67487063c86263d5
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
// goto Screen.setColor
@Screen.setColor
0;JMP
// (return-address)
(return_to_Screen.drawRectangle_from_Screen.setColor_ae43f67487063c86263d5)

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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 2
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

@22222//push constant 3
@3
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 2
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 3
@3
D=A
@THIS
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

@22222//call Screen.drawRectangle 4
// push return-label
@return_to_Screen.setColor_from_Screen.drawRectangle_a210f797e895c65a64507
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
@4
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
// (return-address)
(return_to_Screen.setColor_from_Screen.drawRectangle_a210f797e895c65a64507)

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

@22222//label label_1
(Bat.move$label_1)

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

@22222//function Keyboard.init 0
(Keyboard.init)

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

@22222//function Keyboard.keyPressed 0
(Keyboard.keyPressed)

@22222//push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Memory.peek 1
// push return-label
@return_to_Screen.setColor_from_Memory.peek_a94b378ab65fd9d2b20f0
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
// goto Memory.peek
@Memory.peek
0;JMP
// (return-address)
(return_to_Screen.setColor_from_Memory.peek_a94b378ab65fd9d2b20f0)

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

@22222//function Keyboard.readChar 2
(Keyboard.readChar)
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.printChar 1
// push return-label
@return_to_Screen.setColor_from_Output.printChar_afadd56b5f391f8407e51
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
// goto Output.printChar
@Output.printChar
0;JMP
// (return-address)
(return_to_Screen.setColor_from_Output.printChar_afadd56b5f391f8407e51)

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

@22222//label WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Keyboard.readChar$af9a03077b46a1acd7e4b
D;JNE
@SP
A=M-1
M=-1
@Keyboard.readChar$after-af9a03077b46a1acd7e4b
0;JMP
(Keyboard.readChar$af9a03077b46a1acd7e4b)
@SP
A=M-1
M=0
(Keyboard.readChar$after-af9a03077b46a1acd7e4b)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Keyboard.readChar$ad86d53c1f5ac7d53b77a
D;JLE
@SP
A=M-1
M=-1
@Keyboard.readChar$after-ad86d53c1f5ac7d53b77a
0;JMP
(Keyboard.readChar$ad86d53c1f5ac7d53b77a)
@SP
A=M-1
M=0
(Keyboard.readChar$after-ad86d53c1f5ac7d53b77a)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Keyboard.readChar$WHILE_END0
D;JNE

@22222//call Keyboard.keyPressed 0
// push return-label
@return_to_Output.printChar_from_Keyboard.keyPressed_a418b08160544a90a3be9
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
// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
// (return-address)
(return_to_Output.printChar_from_Keyboard.keyPressed_a418b08160544a90a3be9)

@22222//pop local 0
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Keyboard.readChar$a696cca1a150548ccfe49
D;JLE
@SP
A=M-1
M=-1
@Keyboard.readChar$after-a696cca1a150548ccfe49
0;JMP
(Keyboard.readChar$a696cca1a150548ccfe49)
@SP
A=M-1
M=0
(Keyboard.readChar$after-a696cca1a150548ccfe49)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Keyboard.readChar$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Keyboard.readChar$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Keyboard.readChar$IF_TRUE0)

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

@22222//label IF_FALSE0
(Keyboard.readChar$IF_FALSE0)

@22222//goto WHILE_EXP0
@Keyboard.readChar$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Keyboard.readChar$WHILE_END0)

@22222//call String.backSpace 0
// push return-label
@return_to_Keyboard.keyPressed_from_String.backSpace_a325804a2bd034b662aea
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
// goto String.backSpace
@String.backSpace
0;JMP
// (return-address)
(return_to_Keyboard.keyPressed_from_String.backSpace_a325804a2bd034b662aea)

@22222//call Output.printChar 1
// push return-label
@return_to_String.backSpace_from_Output.printChar_a5854def1c0104c603da3
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
// goto Output.printChar
@Output.printChar
0;JMP
// (return-address)
(return_to_String.backSpace_from_Output.printChar_a5854def1c0104c603da3)

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

@22222//call Output.printChar 1
// push return-label
@return_to_Output.printChar_from_Output.printChar_a5f533a8a190e5dfed185
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
// goto Output.printChar
@Output.printChar
0;JMP
// (return-address)
(return_to_Output.printChar_from_Output.printChar_a5f533a8a190e5dfed185)

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

@22222//function Keyboard.readLine 5
(Keyboard.readLine)
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

@22222//push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.new 1
// push return-label
@return_to_Output.printChar_from_String.new_a6aa89f997ddd7017eb05
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
// goto String.new
@String.new
0;JMP
// (return-address)
(return_to_Output.printChar_from_String.new_a6aa89f997ddd7017eb05)

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

@22222//call Output.printString 1
// push return-label
@return_to_String.new_from_Output.printString_a4725ca5d04673d9060b0
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
// goto Output.printString
@Output.printString
0;JMP
// (return-address)
(return_to_String.new_from_Output.printString_a4725ca5d04673d9060b0)

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

@22222//call String.newLine 0
// push return-label
@return_to_Output.printString_from_String.newLine_a84079d48061ce846e2e8
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
// goto String.newLine
@String.newLine
0;JMP
// (return-address)
(return_to_Output.printString_from_String.newLine_a84079d48061ce846e2e8)

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

@22222//call String.backSpace 0
// push return-label
@return_to_String.newLine_from_String.backSpace_ae9ab2024bd69315b299e
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
// goto String.backSpace
@String.backSpace
0;JMP
// (return-address)
(return_to_String.newLine_from_String.backSpace_ae9ab2024bd69315b299e)

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

@22222//label WHILE_EXP0
(Keyboard.readLine$WHILE_EXP0)

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

@22222//not
@SP
A=M-1
M=!M

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Keyboard.readLine$WHILE_END0
D;JNE

@22222//call Keyboard.readChar 0
// push return-label
@return_to_String.backSpace_from_Keyboard.readChar_a10570fa3232c5cd61277
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
// goto Keyboard.readChar
@Keyboard.readChar
0;JMP
// (return-address)
(return_to_String.backSpace_from_Keyboard.readChar_a10570fa3232c5cd61277)

@22222//pop local 0
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

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Keyboard.readLine$ad1d5a90d8a7fe0ed1ab1
D;JNE
@SP
A=M-1
M=-1
@Keyboard.readLine$after-ad1d5a90d8a7fe0ed1ab1
0;JMP
(Keyboard.readLine$ad1d5a90d8a7fe0ed1ab1)
@SP
A=M-1
M=0
(Keyboard.readLine$after-ad1d5a90d8a7fe0ed1ab1)

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Keyboard.readLine$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Keyboard.readLine$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Keyboard.readLine$IF_TRUE0)

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

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Keyboard.readLine$a1353a18139a078809e53
D;JNE
@SP
A=M-1
M=-1
@Keyboard.readLine$after-a1353a18139a078809e53
0;JMP
(Keyboard.readLine$a1353a18139a078809e53)
@SP
A=M-1
M=0
(Keyboard.readLine$after-a1353a18139a078809e53)

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Keyboard.readLine$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Keyboard.readLine$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Keyboard.readLine$IF_TRUE1)

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

@22222//call String.eraseLastChar 1
// push return-label
@return_to_Keyboard.readChar_from_String.eraseLastChar_a345fe5cc2de17211e7e0
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
// goto String.eraseLastChar
@String.eraseLastChar
0;JMP
// (return-address)
(return_to_Keyboard.readChar_from_String.eraseLastChar_a345fe5cc2de17211e7e0)

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

@22222//goto IF_END1
@Keyboard.readLine$IF_END1
0;JMP

@22222//label IF_FALSE1
(Keyboard.readLine$IF_FALSE1)

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

@22222//call String.appendChar 2
// push return-label
@return_to_String.eraseLastChar_from_String.appendChar_acc053adb02e55f1650d6
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.eraseLastChar_from_String.appendChar_acc053adb02e55f1650d6)

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

@22222//label IF_END1
(Keyboard.readLine$IF_END1)

@22222//label IF_FALSE0
(Keyboard.readLine$IF_FALSE0)

@22222//goto WHILE_EXP0
@Keyboard.readLine$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Keyboard.readLine$WHILE_END0)

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

@22222//function Keyboard.readInt 2
(Keyboard.readInt)
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

@22222//call Keyboard.readLine 1
// push return-label
@return_to_String.eraseLastChar_from_Keyboard.readLine_a319dc18d1715f72b6853
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
// goto Keyboard.readLine
@Keyboard.readLine
0;JMP
// (return-address)
(return_to_String.eraseLastChar_from_Keyboard.readLine_a319dc18d1715f72b6853)

@22222//pop local 0
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

@22222//call String.intValue 1
// push return-label
@return_to_Keyboard.readLine_from_String.intValue_aebc65ae30e27e1f1796b
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
// goto String.intValue
@String.intValue
0;JMP
// (return-address)
(return_to_Keyboard.readLine_from_String.intValue_aebc65ae30e27e1f1796b)

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

@22222//call String.dispose 1
// push return-label
@return_to_String.intValue_from_String.dispose_a7952d9fe93ea1cb4eb52
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
// goto String.dispose
@String.dispose
0;JMP
// (return-address)
(return_to_String.intValue_from_String.dispose_a7952d9fe93ea1cb4eb52)

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

@22222//function Main.main 1
(Main.main)
@SP
A=M
M=0
@SP
M=M+1

@22222//call PongGame.newInstance 0
// push return-label
@return_to_String.intValue_from_PongGame.newInstance_a92cc87af5ee5d45e51cb
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
// goto PongGame.newInstance
@PongGame.newInstance
0;JMP
// (return-address)
(return_to_String.intValue_from_PongGame.newInstance_a92cc87af5ee5d45e51cb)

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

@22222//call PongGame.getInstance 0
// push return-label
@return_to_PongGame.newInstance_from_PongGame.getInstance_a7eaa80277f3ccf5ca1a0
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
// goto PongGame.getInstance
@PongGame.getInstance
0;JMP
// (return-address)
(return_to_PongGame.newInstance_from_PongGame.getInstance_a7eaa80277f3ccf5ca1a0)

@22222//pop local 0
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

@22222//call PongGame.run 0
// push return-label
@return_to_PongGame.getInstance_from_PongGame.run_aab508b308b6d39c0194f
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
// goto PongGame.run
@PongGame.run
0;JMP
// (return-address)
(return_to_PongGame.getInstance_from_PongGame.run_aab508b308b6d39c0194f)

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

@22222//call PongGame.dispose 0
// push return-label
@return_to_PongGame.run_from_PongGame.dispose_ac3dc74d449463980b7f4
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
// goto PongGame.dispose
@PongGame.dispose
0;JMP
// (return-address)
(return_to_PongGame.run_from_PongGame.dispose_ac3dc74d449463980b7f4)

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

@22222//function Math.init 1
(Math.init)
@SP
A=M
M=0
@SP
M=M+1

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Array.new 1
// push return-label
@return_to_PongGame.run_from_Array.new_ad907a09022b9df1bd0e1
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
// goto Array.new
@Array.new
0;JMP
// (return-address)
(return_to_PongGame.run_from_Array.new_ad907a09022b9df1bd0e1)

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
@Math.1
M=D

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Array.new 1
// push return-label
@return_to_Array.new_from_Array.new_a7a2a0361f65426d5d342
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
// goto Array.new
@Array.new
0;JMP
// (return-address)
(return_to_Array.new_from_Array.new_a7a2a0361f65426d5d342)

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
@Math.0
M=D

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push static 0
@Math.0
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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//label WHILE_EXP0
(Math.init$WHILE_EXP0)

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

@22222//push constant 15
@15
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
@Math.init$a65507559e0092f121420
D;JGE
@SP
A=M-1
M=-1
@Math.init$after-a65507559e0092f121420
0;JMP
(Math.init$a65507559e0092f121420)
@SP
A=M-1
M=0
(Math.init$after-a65507559e0092f121420)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Math.init$WHILE_END0
D;JNE

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

@22222//pop local 0
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

@22222//push static 0
@Math.0
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

@22222//push static 0
@Math.0
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

@22222//push static 0
@Math.0
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//goto WHILE_EXP0
@Math.init$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Math.init$WHILE_END0)

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

@22222//function Math.abs 0
(Math.abs)

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

@22222//push constant 0
@0
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
@Math.abs$a2fab014d04e9b5f27e5c
D;JGE
@SP
A=M-1
M=-1
@Math.abs$after-a2fab014d04e9b5f27e5c
0;JMP
(Math.abs$a2fab014d04e9b5f27e5c)
@SP
A=M-1
M=0
(Math.abs$after-a2fab014d04e9b5f27e5c)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Math.abs$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Math.abs$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Math.abs$IF_TRUE0)

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

@22222//neg
@SP
A=M-1
M=-M

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

@22222//label IF_FALSE0
(Math.abs$IF_FALSE0)

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

@22222//function Math.multiply 5
(Math.multiply)
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

@22222//push constant 0
@0
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
@Math.multiply$a35f01a17245d112220e5
D;JGE
@SP
A=M-1
M=-1
@Math.multiply$after-a35f01a17245d112220e5
0;JMP
(Math.multiply$a35f01a17245d112220e5)
@SP
A=M-1
M=0
(Math.multiply$after-a35f01a17245d112220e5)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.multiply$a5521d1d0696b0692e0db
D;JLE
@SP
A=M-1
M=-1
@Math.multiply$after-a5521d1d0696b0692e0db
0;JMP
(Math.multiply$a5521d1d0696b0692e0db)
@SP
A=M-1
M=0
(Math.multiply$after-a5521d1d0696b0692e0db)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.multiply$ac206df51c9e621e07cae
D;JLE
@SP
A=M-1
M=-1
@Math.multiply$after-ac206df51c9e621e07cae
0;JMP
(Math.multiply$ac206df51c9e621e07cae)
@SP
A=M-1
M=0
(Math.multiply$after-ac206df51c9e621e07cae)

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

@22222//push constant 0
@0
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
@Math.multiply$a74a76d8132dacd9f109b
D;JGE
@SP
A=M-1
M=-1
@Math.multiply$after-a74a76d8132dacd9f109b
0;JMP
(Math.multiply$a74a76d8132dacd9f109b)
@SP
A=M-1
M=0
(Math.multiply$after-a74a76d8132dacd9f109b)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//call Math.abs 1
// push return-label
@return_to_Array.new_from_Math.abs_afcfc3c049b79717cbd01
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
// goto Math.abs
@Math.abs
0;JMP
// (return-address)
(return_to_Array.new_from_Math.abs_afcfc3c049b79717cbd01)

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

@22222//call Math.abs 1
// push return-label
@return_to_Math.abs_from_Math.abs_a4489aee3305c30f62071
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
// goto Math.abs
@Math.abs
0;JMP
// (return-address)
(return_to_Math.abs_from_Math.abs_a4489aee3305c30f62071)

@22222//pop argument 1
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
@Math.multiply$a806d7d88d14fed2f09fc
D;JGE
@SP
A=M-1
M=-1
@Math.multiply$after-a806d7d88d14fed2f09fc
0;JMP
(Math.multiply$a806d7d88d14fed2f09fc)
@SP
A=M-1
M=0
(Math.multiply$after-a806d7d88d14fed2f09fc)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Math.multiply$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Math.multiply$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Math.multiply$IF_TRUE0)

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

@22222//pop argument 1
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
A=M
M=D

@22222//label IF_FALSE0
(Math.multiply$IF_FALSE0)

@22222//label WHILE_EXP0
(Math.multiply$WHILE_EXP0)

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
@Math.multiply$adeb4513f9a784320a5ec
D;JGE
@SP
A=M-1
M=-1
@Math.multiply$after-adeb4513f9a784320a5ec
0;JMP
(Math.multiply$adeb4513f9a784320a5ec)
@SP
A=M-1
M=0
(Math.multiply$after-adeb4513f9a784320a5ec)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Math.multiply$WHILE_END0
D;JNE

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

@22222//push static 0
@Math.0
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

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.multiply$a11cfb2427238a1df52f0
D;JNE
@SP
A=M-1
M=-1
@Math.multiply$after-a11cfb2427238a1df52f0
0;JMP
(Math.multiply$a11cfb2427238a1df52f0)
@SP
A=M-1
M=0
(Math.multiply$after-a11cfb2427238a1df52f0)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Math.multiply$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Math.multiply$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Math.multiply$IF_TRUE1)

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

@22222//pop local 0
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

@22222//push static 0
@Math.0
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

@22222//label IF_FALSE1
(Math.multiply$IF_FALSE1)

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

@22222//goto WHILE_EXP0
@Math.multiply$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Math.multiply$WHILE_END0)

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

@22222//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
M=0
@Math.multiply$IF_TRUE2
D;JNE

@22222//goto IF_FALSE2
@Math.multiply$IF_FALSE2
0;JMP

@22222//label IF_TRUE2
(Math.multiply$IF_TRUE2)

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

@22222//neg
@SP
A=M-1
M=-M

@22222//pop local 0
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

@22222//label IF_FALSE2
(Math.multiply$IF_FALSE2)

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

@22222//function Math.divide 4
(Math.divide)
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.divide$a23c77146b4fd9ae248b6
D;JNE
@SP
A=M-1
M=-1
@Math.divide$after-a23c77146b4fd9ae248b6
0;JMP
(Math.divide$a23c77146b4fd9ae248b6)
@SP
A=M-1
M=0
(Math.divide$after-a23c77146b4fd9ae248b6)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Math.divide$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Math.divide$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Math.divide$IF_TRUE0)

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Math.abs_from_Sys.error_ad8996aca54c39939e0de
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Math.abs_from_Sys.error_ad8996aca54c39939e0de)

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

@22222//label IF_FALSE0
(Math.divide$IF_FALSE0)

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

@22222//push constant 0
@0
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
@Math.divide$aaea07248785d9f7d07e6
D;JGE
@SP
A=M-1
M=-1
@Math.divide$after-aaea07248785d9f7d07e6
0;JMP
(Math.divide$aaea07248785d9f7d07e6)
@SP
A=M-1
M=0
(Math.divide$after-aaea07248785d9f7d07e6)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.divide$aa635525325309de1a0fe
D;JLE
@SP
A=M-1
M=-1
@Math.divide$after-aa635525325309de1a0fe
0;JMP
(Math.divide$aa635525325309de1a0fe)
@SP
A=M-1
M=0
(Math.divide$after-aa635525325309de1a0fe)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.divide$a578f2d442b28a95324f9
D;JLE
@SP
A=M-1
M=-1
@Math.divide$after-a578f2d442b28a95324f9
0;JMP
(Math.divide$a578f2d442b28a95324f9)
@SP
A=M-1
M=0
(Math.divide$after-a578f2d442b28a95324f9)

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

@22222//push constant 0
@0
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
@Math.divide$ac87102c83d49f080e797
D;JGE
@SP
A=M-1
M=-1
@Math.divide$after-ac87102c83d49f080e797
0;JMP
(Math.divide$ac87102c83d49f080e797)
@SP
A=M-1
M=0
(Math.divide$after-ac87102c83d49f080e797)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push static 1
@Math.1
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

@22222//call Math.abs 1
// push return-label
@return_to_Sys.error_from_Math.abs_a03271f91812b55366fc5
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
// goto Math.abs
@Math.abs
0;JMP
// (return-address)
(return_to_Sys.error_from_Math.abs_a03271f91812b55366fc5)

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//call Math.abs 1
// push return-label
@return_to_Math.abs_from_Math.abs_a3505de17b537a656b30d
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
// goto Math.abs
@Math.abs
0;JMP
// (return-address)
(return_to_Math.abs_from_Math.abs_a3505de17b537a656b30d)

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

@22222//label WHILE_EXP0
(Math.divide$WHILE_EXP0)

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

@22222//push constant 15
@15
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
@Math.divide$a71aee4af9e206433ce31
D;JGE
@SP
A=M-1
M=-1
@Math.divide$after-a71aee4af9e206433ce31
0;JMP
(Math.divide$a71aee4af9e206433ce31)
@SP
A=M-1
M=0
(Math.divide$after-a71aee4af9e206433ce31)

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

@22222//not
@SP
A=M-1
M=!M

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Math.divide$WHILE_END0
D;JNE

@22222//push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push static 1
@Math.1
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

@22222//push static 1
@Math.1
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
@Math.divide$a543429f183eaaeaae02c
D;JGE
@SP
A=M-1
M=-1
@Math.divide$after-a543429f183eaaeaae02c
0;JMP
(Math.divide$a543429f183eaaeaae02c)
@SP
A=M-1
M=0
(Math.divide$after-a543429f183eaaeaae02c)

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

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Math.divide$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Math.divide$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Math.divide$IF_TRUE1)

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

@22222//push static 1
@Math.1
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

@22222//push static 1
@Math.1
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

@22222//push static 1
@Math.1
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push static 1
@Math.1
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

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.divide$afe96c4363eb2cf12fb68
D;JLE
@SP
A=M-1
M=-1
@Math.divide$after-afe96c4363eb2cf12fb68
0;JMP
(Math.divide$afe96c4363eb2cf12fb68)
@SP
A=M-1
M=0
(Math.divide$after-afe96c4363eb2cf12fb68)

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

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
M=0
@Math.divide$IF_TRUE2
D;JNE

@22222//goto IF_FALSE2
@Math.divide$IF_FALSE2
0;JMP

@22222//label IF_TRUE2
(Math.divide$IF_TRUE2)

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

@22222//pop local 0
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

@22222//label IF_FALSE2
(Math.divide$IF_FALSE2)

@22222//label IF_FALSE1
(Math.divide$IF_FALSE1)

@22222//goto WHILE_EXP0
@Math.divide$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Math.divide$WHILE_END0)

@22222//label WHILE_EXP1
(Math.divide$WHILE_EXP1)

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.divide$a55532c8cc102ea8a31f3
D;JLE
@SP
A=M-1
M=-1
@Math.divide$after-a55532c8cc102ea8a31f3
0;JMP
(Math.divide$a55532c8cc102ea8a31f3)
@SP
A=M-1
M=0
(Math.divide$after-a55532c8cc102ea8a31f3)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
M=0
@Math.divide$WHILE_END1
D;JNE

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

@22222//push static 1
@Math.1
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

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.divide$a299b208b10293a72a8d6
D;JLE
@SP
A=M-1
M=-1
@Math.divide$after-a299b208b10293a72a8d6
0;JMP
(Math.divide$a299b208b10293a72a8d6)
@SP
A=M-1
M=0
(Math.divide$after-a299b208b10293a72a8d6)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
M=0
@Math.divide$IF_TRUE3
D;JNE

@22222//goto IF_FALSE3
@Math.divide$IF_FALSE3
0;JMP

@22222//label IF_TRUE3
(Math.divide$IF_TRUE3)

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

@22222//push static 0
@Math.0
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

@22222//push static 1
@Math.1
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

@22222//label IF_FALSE3
(Math.divide$IF_FALSE3)

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

@22222//pop local 0
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

@22222//goto WHILE_EXP1
@Math.divide$WHILE_EXP1
0;JMP

@22222//label WHILE_END1
(Math.divide$WHILE_END1)

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

@22222//if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
M=0
@Math.divide$IF_TRUE4
D;JNE

@22222//goto IF_FALSE4
@Math.divide$IF_FALSE4
0;JMP

@22222//label IF_TRUE4
(Math.divide$IF_TRUE4)

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

@22222//neg
@SP
A=M-1
M=-M

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

@22222//label IF_FALSE4
(Math.divide$IF_FALSE4)

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

@22222//function Math.sqrt 4
(Math.sqrt)
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

@22222//push constant 0
@0
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
@Math.sqrt$a9cc277e5377c4e9e7c72
D;JGE
@SP
A=M-1
M=-1
@Math.sqrt$after-a9cc277e5377c4e9e7c72
0;JMP
(Math.sqrt$a9cc277e5377c4e9e7c72)
@SP
A=M-1
M=0
(Math.sqrt$after-a9cc277e5377c4e9e7c72)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Math.sqrt$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Math.sqrt$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Math.sqrt$IF_TRUE0)

@22222//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Math.abs_from_Sys.error_af40152d1e8c60e0b2bbc
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Math.abs_from_Sys.error_af40152d1e8c60e0b2bbc)

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

@22222//label IF_FALSE0
(Math.sqrt$IF_FALSE0)

@22222//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 0
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

@22222//label WHILE_EXP0
(Math.sqrt$WHILE_EXP0)

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.sqrt$ad14c94b3e02fb003fe75
D;JLE
@SP
A=M-1
M=-1
@Math.sqrt$after-ad14c94b3e02fb003fe75
0;JMP
(Math.sqrt$ad14c94b3e02fb003fe75)
@SP
A=M-1
M=0
(Math.sqrt$after-ad14c94b3e02fb003fe75)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Math.sqrt$WHILE_END0
D;JNE

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

@22222//push static 0
@Math.0
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

@22222//call Math.multiply 2
// push return-label
@return_to_Sys.error_from_Math.multiply_a12bc2cdd734003a59dd3
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Sys.error_from_Math.multiply_a12bc2cdd734003a59dd3)

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

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.sqrt$a70772b88f63c7a8a8a20
D;JLE
@SP
A=M-1
M=-1
@Math.sqrt$after-a70772b88f63c7a8a8a20
0;JMP
(Math.sqrt$a70772b88f63c7a8a8a20)
@SP
A=M-1
M=0
(Math.sqrt$after-a70772b88f63c7a8a8a20)

@22222//not
@SP
A=M-1
M=!M

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

@22222//push constant 0
@0
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
@Math.sqrt$a47e6fdb615b01c27f5f0
D;JGE
@SP
A=M-1
M=-1
@Math.sqrt$after-a47e6fdb615b01c27f5f0
0;JMP
(Math.sqrt$a47e6fdb615b01c27f5f0)
@SP
A=M-1
M=0
(Math.sqrt$after-a47e6fdb615b01c27f5f0)

@22222//not
@SP
A=M-1
M=!M

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Math.sqrt$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Math.sqrt$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Math.sqrt$IF_TRUE1)

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

@22222//label IF_FALSE1
(Math.sqrt$IF_FALSE1)

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

@22222//pop local 0
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

@22222//goto WHILE_EXP0
@Math.sqrt$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Math.sqrt$WHILE_END0)

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

@22222//function Math.max 0
(Math.max)

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

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Math.max$a6639b32f6552be6d5ed4
D;JLE
@SP
A=M-1
M=-1
@Math.max$after-a6639b32f6552be6d5ed4
0;JMP
(Math.max$a6639b32f6552be6d5ed4)
@SP
A=M-1
M=0
(Math.max$after-a6639b32f6552be6d5ed4)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Math.max$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Math.max$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Math.max$IF_TRUE0)

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

@22222//pop argument 1
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
A=M
M=D

@22222//label IF_FALSE0
(Math.max$IF_FALSE0)

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

@22222//function Math.min 0
(Math.min)

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
@Math.min$a7740d570cfa7afe651e0
D;JGE
@SP
A=M-1
M=-1
@Math.min$after-a7740d570cfa7afe651e0
0;JMP
(Math.min$a7740d570cfa7afe651e0)
@SP
A=M-1
M=0
(Math.min$after-a7740d570cfa7afe651e0)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Math.min$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Math.min$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Math.min$IF_TRUE0)

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

@22222//pop argument 1
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
A=M
M=D

@22222//label IF_FALSE0
(Math.min$IF_FALSE0)

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

@22222//function Memory.init 0
(Memory.init)

@22222//push constant 0
@0
D=A
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
@Memory.0
M=D

@22222//push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push static 0
@Memory.0
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

@22222//push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 2049
@2049
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push static 0
@Memory.0
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

@22222//push constant 2050
@2050
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//function Memory.peek 0
(Memory.peek)

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

@22222//push static 0
@Memory.0
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

@22222//function Memory.poke 0
(Memory.poke)

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

@22222//push static 0
@Memory.0
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//function Memory.alloc 2
(Memory.alloc)
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

@22222//push constant 0
@0
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
@Memory.alloc$a787c45bc86bca17a29d3
D;JGE
@SP
A=M-1
M=-1
@Memory.alloc$after-a787c45bc86bca17a29d3
0;JMP
(Memory.alloc$a787c45bc86bca17a29d3)
@SP
A=M-1
M=0
(Memory.alloc$after-a787c45bc86bca17a29d3)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Memory.alloc$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Memory.alloc$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Memory.alloc$IF_TRUE0)

@22222//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Sys.error_from_Sys.error_a47d9624a14e2eec347c3
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Sys.error_from_Sys.error_a47d9624a14e2eec347c3)

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

@22222//label IF_FALSE0
(Memory.alloc$IF_FALSE0)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Memory.alloc$ac8118d81c01bbd5398b2
D;JNE
@SP
A=M-1
M=-1
@Memory.alloc$after-ac8118d81c01bbd5398b2
0;JMP
(Memory.alloc$ac8118d81c01bbd5398b2)
@SP
A=M-1
M=0
(Memory.alloc$after-ac8118d81c01bbd5398b2)

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Memory.alloc$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Memory.alloc$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Memory.alloc$IF_TRUE1)

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//label IF_FALSE1
(Memory.alloc$IF_FALSE1)

@22222//push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 0
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

@22222//label WHILE_EXP0
(Memory.alloc$WHILE_EXP0)

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

@22222//push constant 16383
@16383
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
@Memory.alloc$a5cd8250e339c74609dde
D;JGE
@SP
A=M-1
M=-1
@Memory.alloc$after-a5cd8250e339c74609dde
0;JMP
(Memory.alloc$a5cd8250e339c74609dde)
@SP
A=M-1
M=0
(Memory.alloc$after-a5cd8250e339c74609dde)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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
@Memory.alloc$a776fa354b10a71df449c
D;JGE
@SP
A=M-1
M=-1
@Memory.alloc$after-a776fa354b10a71df449c
0;JMP
(Memory.alloc$a776fa354b10a71df449c)
@SP
A=M-1
M=0
(Memory.alloc$after-a776fa354b10a71df449c)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Memory.alloc$WHILE_END0
D;JNE

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Memory.alloc$a204722046a75d79d7cc5
D;JNE
@SP
A=M-1
M=-1
@Memory.alloc$after-a204722046a75d79d7cc5
0;JMP
(Memory.alloc$a204722046a75d79d7cc5)
@SP
A=M-1
M=0
(Memory.alloc$after-a204722046a75d79d7cc5)

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

@22222//push constant 16382
@16382
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Memory.alloc$afd307f0e263166be037b
D;JLE
@SP
A=M-1
M=-1
@Memory.alloc$after-afd307f0e263166be037b
0;JMP
(Memory.alloc$afd307f0e263166be037b)
@SP
A=M-1
M=0
(Memory.alloc$after-afd307f0e263166be037b)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//push constant 0
@0
D=A
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Memory.alloc$a0195f394bb42913921fd
D;JNE
@SP
A=M-1
M=-1
@Memory.alloc$after-a0195f394bb42913921fd
0;JMP
(Memory.alloc$a0195f394bb42913921fd)
@SP
A=M-1
M=0
(Memory.alloc$after-a0195f394bb42913921fd)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
M=0
@Memory.alloc$IF_TRUE2
D;JNE

@22222//goto IF_FALSE2
@Memory.alloc$IF_FALSE2
0;JMP

@22222//label IF_TRUE2
(Memory.alloc$IF_TRUE2)

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

@22222//pop local 0
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

@22222//goto IF_END2
@Memory.alloc$IF_END2
0;JMP

@22222//label IF_FALSE2
(Memory.alloc$IF_FALSE2)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 0
@0
D=A
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 2
@2
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

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Memory.alloc$a4da6c0745ccb96db1298
D;JNE
@SP
A=M-1
M=-1
@Memory.alloc$after-a4da6c0745ccb96db1298
0;JMP
(Memory.alloc$a4da6c0745ccb96db1298)
@SP
A=M-1
M=0
(Memory.alloc$after-a4da6c0745ccb96db1298)

@22222//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
M=0
@Memory.alloc$IF_TRUE3
D;JNE

@22222//goto IF_FALSE3
@Memory.alloc$IF_FALSE3
0;JMP

@22222//label IF_TRUE3
(Memory.alloc$IF_TRUE3)

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 2
@2
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//goto IF_END3
@Memory.alloc$IF_END3
0;JMP

@22222//label IF_FALSE3
(Memory.alloc$IF_FALSE3)

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 1
@1
D=A
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//label IF_END3
(Memory.alloc$IF_END3)

@22222//label IF_END2
(Memory.alloc$IF_END2)

@22222//goto WHILE_EXP0
@Memory.alloc$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Memory.alloc$WHILE_END0)

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

@22222//push constant 16379
@16379
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Memory.alloc$a5ec2bb7082f5c69bdf43
D;JLE
@SP
A=M-1
M=-1
@Memory.alloc$after-a5ec2bb7082f5c69bdf43
0;JMP
(Memory.alloc$a5ec2bb7082f5c69bdf43)
@SP
A=M-1
M=0
(Memory.alloc$after-a5ec2bb7082f5c69bdf43)

@22222//if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
M=0
@Memory.alloc$IF_TRUE4
D;JNE

@22222//goto IF_FALSE4
@Memory.alloc$IF_FALSE4
0;JMP

@22222//label IF_TRUE4
(Memory.alloc$IF_TRUE4)

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Sys.error_from_Sys.error_adf501a88cb2ac26b6c67
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Sys.error_from_Sys.error_adf501a88cb2ac26b6c67)

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

@22222//label IF_FALSE4
(Memory.alloc$IF_FALSE4)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Memory.alloc$a9f1aa2ca0d41fd10385e
D;JLE
@SP
A=M-1
M=-1
@Memory.alloc$after-a9f1aa2ca0d41fd10385e
0;JMP
(Memory.alloc$a9f1aa2ca0d41fd10385e)
@SP
A=M-1
M=0
(Memory.alloc$after-a9f1aa2ca0d41fd10385e)

@22222//if-goto IF_TRUE5
@SP
M=M-1
A=M
D=M
M=0
@Memory.alloc$IF_TRUE5
D;JNE

@22222//goto IF_FALSE5
@Memory.alloc$IF_FALSE5
0;JMP

@22222//label IF_TRUE5
(Memory.alloc$IF_TRUE5)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 2
@2
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

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Memory.alloc$a228d81a4d5e972428e4c
D;JNE
@SP
A=M-1
M=-1
@Memory.alloc$after-a228d81a4d5e972428e4c
0;JMP
(Memory.alloc$a228d81a4d5e972428e4c)
@SP
A=M-1
M=0
(Memory.alloc$after-a228d81a4d5e972428e4c)

@22222//if-goto IF_TRUE6
@SP
M=M-1
A=M
D=M
M=0
@Memory.alloc$IF_TRUE6
D;JNE

@22222//goto IF_FALSE6
@Memory.alloc$IF_FALSE6
0;JMP

@22222//label IF_TRUE6
(Memory.alloc$IF_TRUE6)

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

@22222//push constant 3
@3
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

@22222//push constant 4
@4
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//goto IF_END6
@Memory.alloc$IF_END6
0;JMP

@22222//label IF_FALSE6
(Memory.alloc$IF_FALSE6)

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

@22222//push constant 3
@3
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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//label IF_END6
(Memory.alloc$IF_END6)

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 2
@2
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//label IF_FALSE5
(Memory.alloc$IF_FALSE5)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 2
@2
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

@22222//function Memory.deAlloc 2
(Memory.deAlloc)
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

@22222//pop local 0
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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 0
@0
D=A
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Memory.deAlloc$a9348f3f68d59c2218d82
D;JNE
@SP
A=M-1
M=-1
@Memory.deAlloc$after-a9348f3f68d59c2218d82
0;JMP
(Memory.deAlloc$a9348f3f68d59c2218d82)
@SP
A=M-1
M=0
(Memory.deAlloc$after-a9348f3f68d59c2218d82)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Memory.deAlloc$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Memory.deAlloc$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Memory.deAlloc$IF_TRUE0)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//goto IF_END0
@Memory.deAlloc$IF_END0
0;JMP

@22222//label IF_FALSE0
(Memory.deAlloc$IF_FALSE0)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 0
@0
D=A
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 2
@2
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

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Memory.deAlloc$a76a2b65cfe352a3ec29e
D;JNE
@SP
A=M-1
M=-1
@Memory.deAlloc$after-a76a2b65cfe352a3ec29e
0;JMP
(Memory.deAlloc$a76a2b65cfe352a3ec29e)
@SP
A=M-1
M=0
(Memory.deAlloc$after-a76a2b65cfe352a3ec29e)

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Memory.deAlloc$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Memory.deAlloc$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Memory.deAlloc$IF_TRUE1)

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 2
@2
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//goto IF_END1
@Memory.deAlloc$IF_END1
0;JMP

@22222//label IF_FALSE1
(Memory.deAlloc$IF_FALSE1)

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 1
@1
D=A
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//label IF_END1
(Memory.deAlloc$IF_END1)

@22222//label IF_END0
(Memory.deAlloc$IF_END0)

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

@22222//function Output.init 0
(Output.init)

@22222//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop static 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Output.4
M=D

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//pop static 2
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Output.2
M=D

@22222//push constant 32
@32
D=A
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
@Output.1
M=D

@22222//push constant 0
@0
D=A
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
@Output.0
M=D

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.new 1
// push return-label
@return_to_Sys.error_from_String.new_a637a3d1ead89cf043742
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
// goto String.new
@String.new
0;JMP
// (return-address)
(return_to_Sys.error_from_String.new_a637a3d1ead89cf043742)

@22222//pop static 3
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Output.3
M=D

@22222//call Output.initMap 0
// push return-label
@return_to_String.new_from_Output.initMap_af7f5b1a66bd786c255ed
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
// goto Output.initMap
@Output.initMap
0;JMP
// (return-address)
(return_to_String.new_from_Output.initMap_af7f5b1a66bd786c255ed)

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

@22222//call Output.createShiftedMap 0
// push return-label
@return_to_Output.initMap_from_Output.createShiftedMap_ad64190466824d991e7f4
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
// goto Output.createShiftedMap
@Output.createShiftedMap
0;JMP
// (return-address)
(return_to_Output.initMap_from_Output.createShiftedMap_ad64190466824d991e7f4)

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

@22222//function Output.initMap 0
(Output.initMap)

@22222//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Array.new 1
// push return-label
@return_to_Output.initMap_from_Array.new_ae16df90e4617ee780f45
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
// goto Array.new
@Array.new
0;JMP
// (return-address)
(return_to_Output.initMap_from_Array.new_ae16df90e4617ee780f45)

@22222//pop static 5
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Output.5
M=D

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Array.new_from_Output.create_a4bccb2c6d4b4b652a5fb
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Array.new_from_Output.create_a4bccb2c6d4b4b652a5fb)

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

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a1d988b9716605b6e4586
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a1d988b9716605b6e4586)

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

@22222//push constant 33
@33
D=A
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

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a51cc297932cce4804625
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a51cc297932cce4804625)

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

@22222//push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ae26d555cee1194a5db71
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ae26d555cee1194a5db71)

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

@22222//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ab9821b440f37a827dd26
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ab9821b440f37a827dd26)

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

@22222//push constant 36
@36
D=A
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

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a701758d54d6af37a2c6a
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a701758d54d6af37a2c6a)

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

@22222//push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a594e9e8a98fe79353b5b
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a594e9e8a98fe79353b5b)

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

@22222//push constant 38
@38
D=A
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

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
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

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_adf6757747bc2446994b9
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_adf6757747bc2446994b9)

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

@22222//push constant 39
@39
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a32f2494c01f05400e4f0
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a32f2494c01f05400e4f0)

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

@22222//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
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

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ab44501065dd9547374c0
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ab44501065dd9547374c0)

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

@22222//push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
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

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a3c9bb4b4f2e3a50b4033
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a3c9bb4b4f2e3a50b4033)

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

@22222//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a97e86dcb2d8c9d40c0c8
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a97e86dcb2d8c9d40c0c8)

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

@22222//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_af554e84a3fe905fac52f
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_af554e84a3fe905fac52f)

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

@22222//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a8a35b9635befa9f94c52
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a8a35b9635befa9f94c52)

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

@22222//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a0e91fb04cfcd96c8ac3e
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a0e91fb04cfcd96c8ac3e)

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

@22222//push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a7e7df7203b20bddf2c0c
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a7e7df7203b20bddf2c0c)

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

@22222//push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a660d73ed6ff93269b541
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a660d73ed6ff93269b541)

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

@22222//push constant 48
@48
D=A
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

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_af3a2e79eeb72b6e288f7
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_af3a2e79eeb72b6e288f7)

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

@22222//push constant 49
@49
D=A
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

@22222//push constant 14
@14
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ae6de8c103854327edeed
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ae6de8c103854327edeed)

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

@22222//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a402c642474edc39341d3
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a402c642474edc39341d3)

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

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a915524243eec281fc4f6
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a915524243eec281fc4f6)

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

@22222//push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ad3c98bbdc374e9dfc45c
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ad3c98bbdc374e9dfc45c)

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

@22222//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a7a54328b9b8ceccd0db2
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a7a54328b9b8ceccd0db2)

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

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_acf656661175907bdb08f
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_acf656661175907bdb08f)

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

@22222//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ac3c818e1c7c2cc6b6eb8
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ac3c818e1c7c2cc6b6eb8)

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

@22222//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a786853fffc31793319da
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a786853fffc31793319da)

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

@22222//push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ae0ca57ba8ba3b6f1bcb7
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ae0ca57ba8ba3b6f1bcb7)

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

@22222//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_acd22f0d18876ee10fc09
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_acd22f0d18876ee10fc09)

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

@22222//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ad4df91ecf82ef2df09b2
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ad4df91ecf82ef2df09b2)

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

@22222//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
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

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a3d9d220d3682335d4ca2
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a3d9d220d3682335d4ca2)

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

@22222//push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_aa547da8d2567942641d6
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_aa547da8d2567942641d6)

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

@22222//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
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

@22222//push constant 24
@24
D=A
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a40c9261751a0d2e0ba43
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a40c9261751a0d2e0ba43)

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

@22222//push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a0f545261594fe0952056
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a0f545261594fe0952056)

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

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_aa2fe09ea2e631ff23d11
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_aa2fe09ea2e631ff23d11)

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

@22222//push constant 65
@65
D=A
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

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a2e1a408c5235b05cfea6
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a2e1a408c5235b05cfea6)

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

@22222//push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_aed63eef309aa407a3f41
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_aed63eef309aa407a3f41)

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

@22222//push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ad534ea6cb909f5d2944a
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ad534ea6cb909f5d2944a)

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

@22222//push constant 68
@68
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

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ad6cf5633ccd072352544
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ad6cf5633ccd072352544)

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

@22222//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 11
@11
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

@22222//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a67e7baed0b0171b28fde
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a67e7baed0b0171b28fde)

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

@22222//push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 11
@11
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

@22222//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a7eb1e155edd7e7714850
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a7eb1e155edd7e7714850)

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

@22222//push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a5eafdd5e3db1bdbc6a04
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a5eafdd5e3db1bdbc6a04)

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

@22222//push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a9fb66eb34c932e35a3ea
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a9fb66eb34c932e35a3ea)

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

@22222//push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a92dc81ff0d40a6a0e3c0
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a92dc81ff0d40a6a0e3c0)

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

@22222//push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a075922d10de4d2d30acc
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a075922d10de4d2d30acc)

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

@22222//push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
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

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a373296754e0fd0b10998
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a373296754e0fd0b10998)

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

@22222//push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a8fc435ddbae949db7616
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a8fc435ddbae949db7616)

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

@22222//push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a3c1eb5e512e2c003b551
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a3c1eb5e512e2c003b551)

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

@22222//push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a905a3a930f047688e8aa
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a905a3a930f047688e8aa)

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

@22222//push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ac320cc95ad2c9bc9d052
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ac320cc95ad2c9bc9d052)

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

@22222//push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ad8d64916095ba79fe779
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ad8d64916095ba79fe779)

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

@22222//push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_adfb82a74e6f63268f935
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_adfb82a74e6f63268f935)

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

@22222//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_abc8b6f49188390e4f96b
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_abc8b6f49188390e4f96b)

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

@22222//push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a8e1ddbb3eff5e1d0b77a
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a8e1ddbb3eff5e1d0b77a)

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

@22222//push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 45
@45
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a15e1f11b7102b4c3f019
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a15e1f11b7102b4c3f019)

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

@22222//push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ae136a3d46aa8703862a7
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ae136a3d46aa8703862a7)

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

@22222//push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a7d2f7f2bda88d81ffba3
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a7d2f7f2bda88d81ffba3)

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

@22222//push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a1b5a1afe1e36750b48d4
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a1b5a1afe1e36750b48d4)

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

@22222//push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
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

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ac14e7eadd6c05178bcb0
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ac14e7eadd6c05178bcb0)

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

@22222//push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ac14230b6f57d01457315
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ac14230b6f57d01457315)

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

@22222//push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a0e60f7ec6e0bfc98710b
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a0e60f7ec6e0bfc98710b)

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

@22222//push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_af57db9bdf3212c6ec43f
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_af57db9bdf3212c6ec43f)

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

@22222//push constant 92
@92
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
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

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
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

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ac120c7a79fa53591610c
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ac120c7a79fa53591610c)

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

@22222//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ad689d53e5d551d7e968d
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ad689d53e5d551d7e968d)

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

@22222//push constant 94
@94
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

@22222//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_acdf596f41bd9c287a4ab
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_acdf596f41bd9c287a4ab)

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

@22222//push constant 95
@95
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_afa1e6bd3f6a6900ce98b
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_afa1e6bd3f6a6900ce98b)

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

@22222//push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
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

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a68a1703c161c149ab1a6
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a68a1703c161c149ab1a6)

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

@22222//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a8078f7db45dc6e1baa37
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a8078f7db45dc6e1baa37)

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

@22222//push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
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

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a38966504a9cabd173482
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a38966504a9cabd173482)

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

@22222//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a9c1ad24a6b1377f7b6cc
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a9c1ad24a6b1377f7b6cc)

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

@22222//push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_adf38b0e8bbaa3007d35b
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_adf38b0e8bbaa3007d35b)

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

@22222//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a20ae0c34eb887d655aee
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a20ae0c34eb887d655aee)

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

@22222//push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a1bf6ef2add8d8d942c9a
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a1bf6ef2add8d8d942c9a)

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

@22222//push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_aeebffeb3c28b6546d7d9
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_aeebffeb3c28b6546d7d9)

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

@22222//push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_aa07e3eb7b921eddaf7b6
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_aa07e3eb7b921eddaf7b6)

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

@22222//push constant 105
@105
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 14
@14
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a58a0a408c80b36ad5f15
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a58a0a408c80b36ad5f15)

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

@22222//push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a3e8b1e8f3cad6b73d3bc
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a3e8b1e8f3cad6b73d3bc)

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

@22222//push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
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

@22222//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a7001c67c54aa4506ae6c
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a7001c67c54aa4506ae6c)

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

@22222//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 14
@14
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a96870b093f5315f4bbca
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a96870b093f5315f4bbca)

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

@22222//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a9779fa86deb28ae86aae
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a9779fa86deb28ae86aae)

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

@22222//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ad00ef031c8717b8ae594
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ad00ef031c8717b8ae594)

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

@22222//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_aa79496f200dec4e48a4d
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_aa79496f200dec4e48a4d)

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

@22222//push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_affec81cce8f3218f806d
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_affec81cce8f3218f806d)

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

@22222//push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a1f8e3b588b4bfdeb7d87
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a1f8e3b588b4bfdeb7d87)

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

@22222//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a52dbf025fca624cd378f
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a52dbf025fca624cd378f)

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

@22222//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a576da84af5bde87645a6
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a576da84af5bde87645a6)

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

@22222//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_afacf536e93e58cce642f
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_afacf536e93e58cce642f)

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

@22222//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a0f2a2bf62927d2c91ccb
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a0f2a2bf62927d2c91ccb)

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

@22222//push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_afe8656856e5459a54d67
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_afe8656856e5459a54d67)

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

@22222//push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_af90c3d69d9bdd7b2508b
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_af90c3d69d9bdd7b2508b)

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

@22222//push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
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

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_afbb721e18258eba7528c
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_afbb721e18258eba7528c)

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

@22222//push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 24
@24
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a786a6f3354a5a9f0d761
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a786a6f3354a5a9f0d761)

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

@22222//push constant 122
@122
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a7200812cff31f837f611
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a7200812cff31f837f611)

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

@22222//push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 56
@56
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 7
@7
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_ab1801e13fbd89b0e4bb2
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_ab1801e13fbd89b0e4bb2)

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

@22222//push constant 124
@124
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a8559295c2a36dca8b485
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a8559295c2a36dca8b485)

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

@22222//push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 7
@7
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 56
@56
D=A
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

@22222//push constant 12
@12
D=A
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

@22222//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_aad2664ac7fceef6d90e1
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_aad2664ac7fceef6d90e1)

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

@22222//push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.create 12
// push return-label
@return_to_Output.create_from_Output.create_a84896985924e777ca072
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
@12
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Output.create
@Output.create
0;JMP
// (return-address)
(return_to_Output.create_from_Output.create_a84896985924e777ca072)

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

@22222//function Output.create 1
(Output.create)
@SP
A=M
M=0
@SP
M=M+1

@22222//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Array.new 1
// push return-label
@return_to_Output.create_from_Array.new_aa45ab92e6abb6222622c
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
// goto Array.new
@Array.new
0;JMP
// (return-address)
(return_to_Output.create_from_Array.new_aa45ab92e6abb6222622c)

@22222//pop local 0
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

@22222//push static 5
@Output.5
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push argument 4
@4
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push argument 5
@5
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push argument 6
@6
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push argument 7
@7
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push argument 8
@8
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push argument 9
@9
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push argument 10
@10
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push argument 11
@11
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//function Output.createShiftedMap 4
(Output.createShiftedMap)
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

@22222//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Array.new 1
// push return-label
@return_to_Output.create_from_Array.new_aea7b407d2e8aea1a9ada
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
// goto Array.new
@Array.new
0;JMP
// (return-address)
(return_to_Output.create_from_Array.new_aea7b407d2e8aea1a9ada)

@22222//pop static 6
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Output.6
M=D

@22222//push constant 0
@0
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

@22222//label WHILE_EXP0
(Output.createShiftedMap$WHILE_EXP0)

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

@22222//push constant 127
@127
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
@Output.createShiftedMap$ab312c9ab0a637ac44dbd
D;JGE
@SP
A=M-1
M=-1
@Output.createShiftedMap$after-ab312c9ab0a637ac44dbd
0;JMP
(Output.createShiftedMap$ab312c9ab0a637ac44dbd)
@SP
A=M-1
M=0
(Output.createShiftedMap$after-ab312c9ab0a637ac44dbd)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Output.createShiftedMap$WHILE_END0
D;JNE

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

@22222//push static 5
@Output.5
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

@22222//pop local 0
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

@22222//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Array.new 1
// push return-label
@return_to_Array.new_from_Array.new_a62b2edef58c98ebb4d1d
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
// goto Array.new
@Array.new
0;JMP
// (return-address)
(return_to_Array.new_from_Array.new_a62b2edef58c98ebb4d1d)

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

@22222//push static 6
@Output.6
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 0
@0
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

@22222//label WHILE_EXP1
(Output.createShiftedMap$WHILE_EXP1)

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

@22222//push constant 11
@11
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
@Output.createShiftedMap$accf8ed1678e1a313ee38
D;JGE
@SP
A=M-1
M=-1
@Output.createShiftedMap$after-accf8ed1678e1a313ee38
0;JMP
(Output.createShiftedMap$accf8ed1678e1a313ee38)
@SP
A=M-1
M=0
(Output.createShiftedMap$after-accf8ed1678e1a313ee38)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
M=0
@Output.createShiftedMap$WHILE_END1
D;JNE

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

@22222//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Array.new_from_Math.multiply_a7399b2a07a0ea099bf52
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Array.new_from_Math.multiply_a7399b2a07a0ea099bf52)

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//goto WHILE_EXP1
@Output.createShiftedMap$WHILE_EXP1
0;JMP

@22222//label WHILE_END1
(Output.createShiftedMap$WHILE_END1)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Output.createShiftedMap$a451b1ec5c14ec6e7f1ad
D;JNE
@SP
A=M-1
M=-1
@Output.createShiftedMap$after-a451b1ec5c14ec6e7f1ad
0;JMP
(Output.createShiftedMap$a451b1ec5c14ec6e7f1ad)
@SP
A=M-1
M=0
(Output.createShiftedMap$after-a451b1ec5c14ec6e7f1ad)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Output.createShiftedMap$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Output.createShiftedMap$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Output.createShiftedMap$IF_TRUE0)

@22222//push constant 32
@32
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

@22222//goto IF_END0
@Output.createShiftedMap$IF_END0
0;JMP

@22222//label IF_FALSE0
(Output.createShiftedMap$IF_FALSE0)

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

@22222//label IF_END0
(Output.createShiftedMap$IF_END0)

@22222//goto WHILE_EXP0
@Output.createShiftedMap$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Output.createShiftedMap$WHILE_END0)

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

@22222//function Output.getMap 1
(Output.getMap)
@SP
A=M
M=0
@SP
M=M+1

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

@22222//push constant 32
@32
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
@Output.getMap$a56d9d412196fc1150838
D;JGE
@SP
A=M-1
M=-1
@Output.getMap$after-a56d9d412196fc1150838
0;JMP
(Output.getMap$a56d9d412196fc1150838)
@SP
A=M-1
M=0
(Output.getMap$after-a56d9d412196fc1150838)

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

@22222//push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Output.getMap$a709d08446070b05beb1a
D;JLE
@SP
A=M-1
M=-1
@Output.getMap$after-a709d08446070b05beb1a
0;JMP
(Output.getMap$a709d08446070b05beb1a)
@SP
A=M-1
M=0
(Output.getMap$after-a709d08446070b05beb1a)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Output.getMap$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Output.getMap$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Output.getMap$IF_TRUE0)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//label IF_FALSE0
(Output.getMap$IF_FALSE0)

@22222//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Output.getMap$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Output.getMap$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Output.getMap$IF_TRUE1)

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

@22222//push static 5
@Output.5
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

@22222//pop local 0
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

@22222//goto IF_END1
@Output.getMap$IF_END1
0;JMP

@22222//label IF_FALSE1
(Output.getMap$IF_FALSE1)

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

@22222//push static 6
@Output.6
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

@22222//pop local 0
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

@22222//label IF_END1
(Output.getMap$IF_END1)

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

@22222//function Output.drawChar 4
(Output.drawChar)
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

@22222//call Output.getMap 1
// push return-label
@return_to_Array.new_from_Output.getMap_a566a6a5f7d8ef665f30a
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
// goto Output.getMap
@Output.getMap
0;JMP
// (return-address)
(return_to_Array.new_from_Output.getMap_a566a6a5f7d8ef665f30a)

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

@22222//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 0
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

@22222//label WHILE_EXP0
(Output.drawChar$WHILE_EXP0)

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

@22222//push constant 11
@11
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
@Output.drawChar$a456dc2051b5fe83b02dc
D;JGE
@SP
A=M-1
M=-1
@Output.drawChar$after-a456dc2051b5fe83b02dc
0;JMP
(Output.drawChar$a456dc2051b5fe83b02dc)
@SP
A=M-1
M=0
(Output.drawChar$after-a456dc2051b5fe83b02dc)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Output.drawChar$WHILE_END0
D;JNE

@22222//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Output.drawChar$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Output.drawChar$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Output.drawChar$IF_TRUE0)

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

@22222//push static 4
@Output.4
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

@22222//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

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

@22222//goto IF_END0
@Output.drawChar$IF_END0
0;JMP

@22222//label IF_FALSE0
(Output.drawChar$IF_FALSE0)

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

@22222//push static 4
@Output.4
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

@22222//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

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

@22222//label IF_END0
(Output.drawChar$IF_END0)

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

@22222//push static 4
@Output.4
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

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push constant 32
@32
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

@22222//pop local 0
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

@22222//goto WHILE_EXP0
@Output.drawChar$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Output.drawChar$WHILE_END0)

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

@22222//function Output.moveCursor 0
(Output.moveCursor)

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

@22222//push constant 0
@0
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
@Output.moveCursor$a024567b4b21d12a17bdb
D;JGE
@SP
A=M-1
M=-1
@Output.moveCursor$after-a024567b4b21d12a17bdb
0;JMP
(Output.moveCursor$a024567b4b21d12a17bdb)
@SP
A=M-1
M=0
(Output.moveCursor$after-a024567b4b21d12a17bdb)

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

@22222//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Output.moveCursor$a79a527c4f26bc527326d
D;JLE
@SP
A=M-1
M=-1
@Output.moveCursor$after-a79a527c4f26bc527326d
0;JMP
(Output.moveCursor$a79a527c4f26bc527326d)
@SP
A=M-1
M=0
(Output.moveCursor$after-a79a527c4f26bc527326d)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push constant 0
@0
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
@Output.moveCursor$afe6b363e2593b35ad332
D;JGE
@SP
A=M-1
M=-1
@Output.moveCursor$after-afe6b363e2593b35ad332
0;JMP
(Output.moveCursor$afe6b363e2593b35ad332)
@SP
A=M-1
M=0
(Output.moveCursor$after-afe6b363e2593b35ad332)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Output.moveCursor$a996a878dc1f4813da365
D;JLE
@SP
A=M-1
M=-1
@Output.moveCursor$after-a996a878dc1f4813da365
0;JMP
(Output.moveCursor$a996a878dc1f4813da365)
@SP
A=M-1
M=0
(Output.moveCursor$after-a996a878dc1f4813da365)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Output.moveCursor$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Output.moveCursor$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Output.moveCursor$IF_TRUE0)

@22222//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Array.new_from_Sys.error_a8eb09bb2146821f65d9d
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Array.new_from_Sys.error_a8eb09bb2146821f65d9d)

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

@22222//label IF_FALSE0
(Output.moveCursor$IF_FALSE0)

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

@22222//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.divide 2
// push return-label
@return_to_Sys.error_from_Math.divide_a564a776eac7ac2977818
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Sys.error_from_Math.divide_a564a776eac7ac2977818)

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
@Output.0
M=D

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_a48a04c48560d1ed13813
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_a48a04c48560d1ed13813)

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

@22222//push static 0
@Output.0
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
@Output.1
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

@22222//push static 0
@Output.0
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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_a1f751c9710d2e9aad1e9
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_a1f751c9710d2e9aad1e9)

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Output.moveCursor$a6f5960f00113692f070f
D;JNE
@SP
A=M-1
M=-1
@Output.moveCursor$after-a6f5960f00113692f070f
0;JMP
(Output.moveCursor$a6f5960f00113692f070f)
@SP
A=M-1
M=0
(Output.moveCursor$after-a6f5960f00113692f070f)

@22222//pop static 2
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Output.2
M=D

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.drawChar 1
// push return-label
@return_to_Math.multiply_from_Output.drawChar_ac9707189d8920ff11c4b
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
// goto Output.drawChar
@Output.drawChar
0;JMP
// (return-address)
(return_to_Math.multiply_from_Output.drawChar_ac9707189d8920ff11c4b)

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

@22222//function Output.printChar 0
(Output.printChar)

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

@22222//call String.newLine 0
// push return-label
@return_to_Math.multiply_from_String.newLine_a59008f021ee9f729bbf8
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
// goto String.newLine
@String.newLine
0;JMP
// (return-address)
(return_to_Math.multiply_from_String.newLine_a59008f021ee9f729bbf8)

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Output.printChar$aef98554d2364112c5cb4
D;JNE
@SP
A=M-1
M=-1
@Output.printChar$after-aef98554d2364112c5cb4
0;JMP
(Output.printChar$aef98554d2364112c5cb4)
@SP
A=M-1
M=0
(Output.printChar$after-aef98554d2364112c5cb4)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Output.printChar$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Output.printChar$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Output.printChar$IF_TRUE0)

@22222//call Output.println 0
// push return-label
@return_to_String.newLine_from_Output.println_a46f427624a69ea4d8bc9
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
// goto Output.println
@Output.println
0;JMP
// (return-address)
(return_to_String.newLine_from_Output.println_a46f427624a69ea4d8bc9)

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

@22222//goto IF_END0
@Output.printChar$IF_END0
0;JMP

@22222//label IF_FALSE0
(Output.printChar$IF_FALSE0)

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

@22222//call String.backSpace 0
// push return-label
@return_to_Output.println_from_String.backSpace_a8a28279f144928403fad
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
// goto String.backSpace
@String.backSpace
0;JMP
// (return-address)
(return_to_Output.println_from_String.backSpace_a8a28279f144928403fad)

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Output.printChar$ab0f710dbfb632da513b6
D;JNE
@SP
A=M-1
M=-1
@Output.printChar$after-ab0f710dbfb632da513b6
0;JMP
(Output.printChar$ab0f710dbfb632da513b6)
@SP
A=M-1
M=0
(Output.printChar$after-ab0f710dbfb632da513b6)

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Output.printChar$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Output.printChar$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Output.printChar$IF_TRUE1)

@22222//call Output.backSpace 0
// push return-label
@return_to_String.backSpace_from_Output.backSpace_a2f401c93bea6b40afa1f
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
// goto Output.backSpace
@Output.backSpace
0;JMP
// (return-address)
(return_to_String.backSpace_from_Output.backSpace_a2f401c93bea6b40afa1f)

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

@22222//goto IF_END1
@Output.printChar$IF_END1
0;JMP

@22222//label IF_FALSE1
(Output.printChar$IF_FALSE1)

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

@22222//call Output.drawChar 1
// push return-label
@return_to_Output.backSpace_from_Output.drawChar_aa541244cf5313e416787
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
// goto Output.drawChar
@Output.drawChar
0;JMP
// (return-address)
(return_to_Output.backSpace_from_Output.drawChar_aa541244cf5313e416787)

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

@22222//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
M=0
@Output.printChar$IF_TRUE2
D;JNE

@22222//goto IF_FALSE2
@Output.printChar$IF_FALSE2
0;JMP

@22222//label IF_TRUE2
(Output.printChar$IF_TRUE2)

@22222//push static 0
@Output.0
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
@Output.0
M=D

@22222//push static 1
@Output.1
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
@Output.1
M=D

@22222//label IF_FALSE2
(Output.printChar$IF_FALSE2)

@22222//push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Output.printChar$a7eabf7337759a18e8ef8
D;JNE
@SP
A=M-1
M=-1
@Output.printChar$after-a7eabf7337759a18e8ef8
0;JMP
(Output.printChar$a7eabf7337759a18e8ef8)
@SP
A=M-1
M=0
(Output.printChar$after-a7eabf7337759a18e8ef8)

@22222//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
M=0
@Output.printChar$IF_TRUE3
D;JNE

@22222//goto IF_FALSE3
@Output.printChar$IF_FALSE3
0;JMP

@22222//label IF_TRUE3
(Output.printChar$IF_TRUE3)

@22222//call Output.println 0
// push return-label
@return_to_Output.drawChar_from_Output.println_ab2c2b0be25fcf7687bac
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
// goto Output.println
@Output.println
0;JMP
// (return-address)
(return_to_Output.drawChar_from_Output.println_ab2c2b0be25fcf7687bac)

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

@22222//goto IF_END3
@Output.printChar$IF_END3
0;JMP

@22222//label IF_FALSE3
(Output.printChar$IF_FALSE3)

@22222//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//pop static 2
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Output.2
M=D

@22222//label IF_END3
(Output.printChar$IF_END3)

@22222//label IF_END1
(Output.printChar$IF_END1)

@22222//label IF_END0
(Output.printChar$IF_END0)

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

@22222//function Output.printString 2
(Output.printString)
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

@22222//call String.length 1
// push return-label
@return_to_Output.drawChar_from_String.length_a159aefe4f08fadecde05
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
// goto String.length
@String.length
0;JMP
// (return-address)
(return_to_Output.drawChar_from_String.length_a159aefe4f08fadecde05)

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

@22222//label WHILE_EXP0
(Output.printString$WHILE_EXP0)

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
@Output.printString$a5be00cbb0758050e2056
D;JGE
@SP
A=M-1
M=-1
@Output.printString$after-a5be00cbb0758050e2056
0;JMP
(Output.printString$a5be00cbb0758050e2056)
@SP
A=M-1
M=0
(Output.printString$after-a5be00cbb0758050e2056)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Output.printString$WHILE_END0
D;JNE

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

@22222//call String.charAt 2
// push return-label
@return_to_String.length_from_String.charAt_a57a4b5a4ec8b3fe6b8dc
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
// goto String.charAt
@String.charAt
0;JMP
// (return-address)
(return_to_String.length_from_String.charAt_a57a4b5a4ec8b3fe6b8dc)

@22222//call Output.printChar 1
// push return-label
@return_to_String.charAt_from_Output.printChar_aa25f645e30e5cb252c78
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
// goto Output.printChar
@Output.printChar
0;JMP
// (return-address)
(return_to_String.charAt_from_Output.printChar_aa25f645e30e5cb252c78)

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

@22222//pop local 0
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

@22222//goto WHILE_EXP0
@Output.printString$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Output.printString$WHILE_END0)

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

@22222//function Output.printInt 0
(Output.printInt)

@22222//push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//call String.setInt 2
// push return-label
@return_to_String.charAt_from_String.setInt_ac79a80315f9bc7048562
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
// goto String.setInt
@String.setInt
0;JMP
// (return-address)
(return_to_String.charAt_from_String.setInt_ac79a80315f9bc7048562)

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

@22222//push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.printString 1
// push return-label
@return_to_String.setInt_from_Output.printString_aa847a7bc060ca1972fe9
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
// goto Output.printString
@Output.printString
0;JMP
// (return-address)
(return_to_String.setInt_from_Output.printString_aa847a7bc060ca1972fe9)

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

@22222//function Output.println 0
(Output.println)

@22222//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 352
@352
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

@22222//push static 0
@Output.0
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
@Output.1
M=D

@22222//push constant 0
@0
D=A
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
@Output.0
M=D

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//pop static 2
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Output.2
M=D

@22222//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Output.println$a73a60d3936c49a4e2610
D;JNE
@SP
A=M-1
M=-1
@Output.println$after-a73a60d3936c49a4e2610
0;JMP
(Output.println$a73a60d3936c49a4e2610)
@SP
A=M-1
M=0
(Output.println$after-a73a60d3936c49a4e2610)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Output.println$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Output.println$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Output.println$IF_TRUE0)

@22222//push constant 32
@32
D=A
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
@Output.1
M=D

@22222//label IF_FALSE0
(Output.println$IF_FALSE0)

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

@22222//function Output.backSpace 0
(Output.backSpace)

@22222//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Output.backSpace$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Output.backSpace$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Output.backSpace$IF_TRUE0)

@22222//push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Output.backSpace$a79590457b04c2736d12e
D;JLE
@SP
A=M-1
M=-1
@Output.backSpace$after-a79590457b04c2736d12e
0;JMP
(Output.backSpace$a79590457b04c2736d12e)
@SP
A=M-1
M=0
(Output.backSpace$after-a79590457b04c2736d12e)

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Output.backSpace$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Output.backSpace$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Output.backSpace$IF_TRUE1)

@22222//push static 0
@Output.0
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
@Output.0
M=D

@22222//push static 1
@Output.1
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
@Output.1
M=D

@22222//goto IF_END1
@Output.backSpace$IF_END1
0;JMP

@22222//label IF_FALSE1
(Output.backSpace$IF_FALSE1)

@22222//push constant 31
@31
D=A
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
@Output.0
M=D

@22222//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Output.backSpace$ad4ee4240779c3c238b71
D;JNE
@SP
A=M-1
M=-1
@Output.backSpace$after-ad4ee4240779c3c238b71
0;JMP
(Output.backSpace$ad4ee4240779c3c238b71)
@SP
A=M-1
M=0
(Output.backSpace$after-ad4ee4240779c3c238b71)

@22222//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
M=0
@Output.backSpace$IF_TRUE2
D;JNE

@22222//goto IF_FALSE2
@Output.backSpace$IF_FALSE2
0;JMP

@22222//label IF_TRUE2
(Output.backSpace$IF_TRUE2)

@22222//push constant 8128
@8128
D=A
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
@Output.1
M=D

@22222//label IF_FALSE2
(Output.backSpace$IF_FALSE2)

@22222//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 321
@321
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
@Output.1
M=D

@22222//label IF_END1
(Output.backSpace$IF_END1)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop static 2
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Output.2
M=D

@22222//goto IF_END0
@Output.backSpace$IF_END0
0;JMP

@22222//label IF_FALSE0
(Output.backSpace$IF_FALSE0)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//pop static 2
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Output.2
M=D

@22222//label IF_END0
(Output.backSpace$IF_END0)

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.drawChar 1
// push return-label
@return_to_String.setInt_from_Output.drawChar_afe267f052c9bba55f2cd
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
// goto Output.drawChar
@Output.drawChar
0;JMP
// (return-address)
(return_to_String.setInt_from_Output.drawChar_afe267f052c9bba55f2cd)

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

@22222//function PongGame.new 0
(PongGame.new)

@22222//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Memory.alloc 1
// push return-label
@return_to_String.setInt_from_Memory.alloc_aa62688d2288b71eb4059
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
// goto Memory.alloc
@Memory.alloc
0;JMP
// (return-address)
(return_to_String.setInt_from_Memory.alloc_aa62688d2288b71eb4059)

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

@22222//call Screen.clearScreen 0
// push return-label
@return_to_Memory.alloc_from_Screen.clearScreen_a61cd739171f876e087f8
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
// goto Screen.clearScreen
@Screen.clearScreen
0;JMP
// (return-address)
(return_to_Memory.alloc_from_Screen.clearScreen_a61cd739171f876e087f8)

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

@22222//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 6
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
A=M
M=D

@22222//push constant 230
@230
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 229
@229
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 6
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

@22222//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Bat.new 4
// push return-label
@return_to_Screen.clearScreen_from_Bat.new_a86f70e5dfaceac37f625
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
@4
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Bat.new
@Bat.new
0;JMP
// (return-address)
(return_to_Screen.clearScreen_from_Bat.new_a86f70e5dfaceac37f625)

@22222//pop this 0
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

@22222//push constant 253
@253
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 222
@222
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 229
@229
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Ball.new 6
// push return-label
@return_to_Bat.new_from_Ball.new_a04e4940ecb824a54efae
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
@6
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Ball.new
@Ball.new
0;JMP
// (return-address)
(return_to_Bat.new_from_Ball.new_a04e4940ecb824a54efae)

@22222//pop this 1
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 400
@400
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Ball.setDestination 2
// push return-label
@return_to_Ball.new_from_Ball.setDestination_a93a5920210eca667ea60
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
// goto Ball.setDestination
@Ball.setDestination
0;JMP
// (return-address)
(return_to_Ball.new_from_Ball.setDestination_a93a5920210eca667ea60)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 238
@238
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 240
@240
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Screen.drawRectangle 4
// push return-label
@return_to_Ball.setDestination_from_Screen.drawRectangle_a42ae68bebedd00815482
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
@4
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
// (return-address)
(return_to_Ball.setDestination_from_Screen.drawRectangle_a42ae68bebedd00815482)

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

@22222//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.moveCursor 2
// push return-label
@return_to_Screen.drawRectangle_from_Output.moveCursor_a53a9a92cf3341c3f14d1
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
// goto Output.moveCursor
@Output.moveCursor
0;JMP
// (return-address)
(return_to_Screen.drawRectangle_from_Output.moveCursor_a53a9a92cf3341c3f14d1)

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

@22222//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.new 1
// push return-label
@return_to_Output.moveCursor_from_String.new_aa3f86b7827e98a29e754
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
// goto String.new
@String.new
0;JMP
// (return-address)
(return_to_Output.moveCursor_from_String.new_aa3f86b7827e98a29e754)

@22222//push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.new_from_String.appendChar_acf6115d297a771a5bcff
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.new_from_String.appendChar_acf6115d297a771a5bcff)

@22222//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a4b291e26ebc48d7d5989
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a4b291e26ebc48d7d5989)

@22222//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_ae8c1a38b9a72f0d9266c
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_ae8c1a38b9a72f0d9266c)

@22222//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a818812008649be04a5f6
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a818812008649be04a5f6)

@22222//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a85c56f52d3d7b68c1ebd
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a85c56f52d3d7b68c1ebd)

@22222//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a6f30f4f4f7908917ff73
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a6f30f4f4f7908917ff73)

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a7b61f1ccb1f161b55a4a
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a7b61f1ccb1f161b55a4a)

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_acaff722078c2b5c03598
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_acaff722078c2b5c03598)

@22222//call Output.printString 1
// push return-label
@return_to_String.appendChar_from_Output.printString_a375ee345701c23c66b29
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
// goto Output.printString
@Output.printString
0;JMP
// (return-address)
(return_to_String.appendChar_from_Output.printString_a375ee345701c23c66b29)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 3
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 2
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 5
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

@22222//push pointer 0
@THIS
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

@22222//function PongGame.dispose 0
(PongGame.dispose)

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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Bat.dispose 0
// push return-label
@return_to_String.appendChar_from_Bat.dispose_adb1d0ae6d366531a484a
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
// goto Bat.dispose
@Bat.dispose
0;JMP
// (return-address)
(return_to_String.appendChar_from_Bat.dispose_adb1d0ae6d366531a484a)

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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Ball.dispose 0
// push return-label
@return_to_Bat.dispose_from_Ball.dispose_a3b7836b86dbd168b4fa4
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
// goto Ball.dispose
@Ball.dispose
0;JMP
// (return-address)
(return_to_Bat.dispose_from_Ball.dispose_a3b7836b86dbd168b4fa4)

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

@22222//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Memory.deAlloc 1
// push return-label
@return_to_Ball.dispose_from_Memory.deAlloc_a36286145342fe12bcec1
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
// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
// (return-address)
(return_to_Ball.dispose_from_Memory.deAlloc_a36286145342fe12bcec1)

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

@22222//function PongGame.newInstance 0
(PongGame.newInstance)

@22222//call PongGame.new 0
// push return-label
@return_to_Ball.dispose_from_PongGame.new_a8df6730e7f0dcd31af98
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
// goto PongGame.new
@PongGame.new
0;JMP
// (return-address)
(return_to_Ball.dispose_from_PongGame.new_a8df6730e7f0dcd31af98)

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
@PongGame.0
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

@22222//function PongGame.getInstance 0
(PongGame.getInstance)

@22222//push static 0
@PongGame.0
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

@22222//function PongGame.run 1
(PongGame.run)
@SP
A=M
M=0
@SP
M=M+1

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

@22222//label label_0
(PongGame.run$label_0)

@22222//push this 3
@3
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_1
@SP
M=M-1
A=M
D=M
M=0
@PongGame.run$label_1
D;JNE

@22222//label label_2
(PongGame.run$label_2)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@PongGame.run$a4ca7a8ae7e8b46855c16
D;JNE
@SP
A=M-1
M=-1
@PongGame.run$after-a4ca7a8ae7e8b46855c16
0;JMP
(PongGame.run$a4ca7a8ae7e8b46855c16)
@SP
A=M-1
M=0
(PongGame.run$after-a4ca7a8ae7e8b46855c16)

@22222//push this 3
@3
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_3
@SP
M=M-1
A=M
D=M
M=0
@PongGame.run$label_3
D;JNE

@22222//call Keyboard.keyPressed 0
// push return-label
@return_to_Ball.dispose_from_Keyboard.keyPressed_a4b2713cc7de224b7b2d7
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
// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
// (return-address)
(return_to_Ball.dispose_from_Keyboard.keyPressed_a4b2713cc7de224b7b2d7)

@22222//pop local 0
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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Bat.move 0
// push return-label
@return_to_Keyboard.keyPressed_from_Bat.move_a5cccadbbbd515867c89f
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
// goto Bat.move
@Bat.move
0;JMP
// (return-address)
(return_to_Keyboard.keyPressed_from_Bat.move_a5cccadbbbd515867c89f)

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

@22222//call moveBall 0
// push return-label
@return_to_Bat.move_from_moveBall_a045743eff0870b777d6f
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
// goto moveBall
@moveBall
0;JMP
// (return-address)
(return_to_Bat.move_from_moveBall_a045743eff0870b777d6f)

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

@22222//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.wait 1
// push return-label
@return_to_moveBall_from_Sys.wait_a2d84a6788efc5660ef46
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
// goto Sys.wait
@Sys.wait
0;JMP
// (return-address)
(return_to_moveBall_from_Sys.wait_a2d84a6788efc5660ef46)

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

@22222//goto label_2
@PongGame.run$label_2
0;JMP

@22222//label label_3
(PongGame.run$label_3)

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

@22222//push constant 130
@130
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@PongGame.run$a3e814038132bba8ea33c
D;JNE
@SP
A=M-1
M=-1
@PongGame.run$after-a3e814038132bba8ea33c
0;JMP
(PongGame.run$a3e814038132bba8ea33c)
@SP
A=M-1
M=0
(PongGame.run$after-a3e814038132bba8ea33c)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_4
@SP
M=M-1
A=M
D=M
M=0
@PongGame.run$label_4
D;JNE

@22222//push this 0
@0
D=A
@THIS
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

@22222//call Bat.setDirection 1
// push return-label
@return_to_Sys.wait_from_Bat.setDirection_a1b347174c1edfb15e59a
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
// goto Bat.setDirection
@Bat.setDirection
0;JMP
// (return-address)
(return_to_Sys.wait_from_Bat.setDirection_a1b347174c1edfb15e59a)

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

@22222//goto label_5
@PongGame.run$label_5
0;JMP

@22222//label label_4
(PongGame.run$label_4)

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

@22222//push constant 132
@132
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@PongGame.run$afef6de8f5e86a856210a
D;JNE
@SP
A=M-1
M=-1
@PongGame.run$after-afef6de8f5e86a856210a
0;JMP
(PongGame.run$afef6de8f5e86a856210a)
@SP
A=M-1
M=0
(PongGame.run$after-afef6de8f5e86a856210a)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_6
@SP
M=M-1
A=M
D=M
M=0
@PongGame.run$label_6
D;JNE

@22222//push this 0
@0
D=A
@THIS
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

@22222//call Bat.setDirection 1
// push return-label
@return_to_Bat.setDirection_from_Bat.setDirection_abbc229394a1e29cc63f2
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
// goto Bat.setDirection
@Bat.setDirection
0;JMP
// (return-address)
(return_to_Bat.setDirection_from_Bat.setDirection_abbc229394a1e29cc63f2)

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

@22222//goto label_7
@PongGame.run$label_7
0;JMP

@22222//label label_6
(PongGame.run$label_6)

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

@22222//push constant 140
@140
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@PongGame.run$abc273319b76f0a86ca86
D;JNE
@SP
A=M-1
M=-1
@PongGame.run$after-abc273319b76f0a86ca86
0;JMP
(PongGame.run$abc273319b76f0a86ca86)
@SP
A=M-1
M=0
(PongGame.run$after-abc273319b76f0a86ca86)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_8
@SP
M=M-1
A=M
D=M
M=0
@PongGame.run$label_8
D;JNE

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//pop this 3
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

@22222//goto label_9
@PongGame.run$label_9
0;JMP

@22222//label label_8
(PongGame.run$label_8)

@22222//label label_9
(PongGame.run$label_9)

@22222//label label_7
(PongGame.run$label_7)

@22222//label label_5
(PongGame.run$label_5)

@22222//label label_10
(PongGame.run$label_10)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@PongGame.run$a95f471ff3b05aba6a8b1
D;JNE
@SP
A=M-1
M=-1
@PongGame.run$after-a95f471ff3b05aba6a8b1
0;JMP
(PongGame.run$a95f471ff3b05aba6a8b1)
@SP
A=M-1
M=0
(PongGame.run$after-a95f471ff3b05aba6a8b1)

@22222//not
@SP
A=M-1
M=!M

@22222//push this 3
@3
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_11
@SP
M=M-1
A=M
D=M
M=0
@PongGame.run$label_11
D;JNE

@22222//call Keyboard.keyPressed 0
// push return-label
@return_to_Bat.setDirection_from_Keyboard.keyPressed_a8bb99630b9a9f3ea8dbc
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
// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
// (return-address)
(return_to_Bat.setDirection_from_Keyboard.keyPressed_a8bb99630b9a9f3ea8dbc)

@22222//pop local 0
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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Bat.move 0
// push return-label
@return_to_Keyboard.keyPressed_from_Bat.move_a00ee1a8533644436bf3a
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
// goto Bat.move
@Bat.move
0;JMP
// (return-address)
(return_to_Keyboard.keyPressed_from_Bat.move_a00ee1a8533644436bf3a)

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

@22222//call moveBall 0
// push return-label
@return_to_Bat.move_from_moveBall_a4add065ea3c57efa28e7
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
// goto moveBall
@moveBall
0;JMP
// (return-address)
(return_to_Bat.move_from_moveBall_a4add065ea3c57efa28e7)

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

@22222//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.wait 1
// push return-label
@return_to_moveBall_from_Sys.wait_aa89a691af8f7fdc8f027
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
// goto Sys.wait
@Sys.wait
0;JMP
// (return-address)
(return_to_moveBall_from_Sys.wait_aa89a691af8f7fdc8f027)

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

@22222//goto label_10
@PongGame.run$label_10
0;JMP

@22222//label label_11
(PongGame.run$label_11)

@22222//goto label_0
@PongGame.run$label_0
0;JMP

@22222//label label_1
(PongGame.run$label_1)

@22222//push this 3
@3
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_12
@SP
M=M-1
A=M
D=M
M=0
@PongGame.run$label_12
D;JNE

@22222//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.moveCursor 2
// push return-label
@return_to_Sys.wait_from_Output.moveCursor_a9564a4192dbd7eb4ecb7
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
// goto Output.moveCursor
@Output.moveCursor
0;JMP
// (return-address)
(return_to_Sys.wait_from_Output.moveCursor_a9564a4192dbd7eb4ecb7)

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

@22222//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.new 1
// push return-label
@return_to_Output.moveCursor_from_String.new_ab8c642a52a7aee9e6abd
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
// goto String.new
@String.new
0;JMP
// (return-address)
(return_to_Output.moveCursor_from_String.new_ab8c642a52a7aee9e6abd)

@22222//push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.new_from_String.appendChar_afd2c1674dfc448d4c61f
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.new_from_String.appendChar_afd2c1674dfc448d4c61f)

@22222//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a2016318a5a3d4f209fb7
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a2016318a5a3d4f209fb7)

@22222//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a3f10eb6f03ebf1a3d189
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a3f10eb6f03ebf1a3d189)

@22222//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a7be3df5406981a550bb0
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a7be3df5406981a550bb0)

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a908d705c1e9e2fe784de
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a908d705c1e9e2fe784de)

@22222//push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a7cc35649d6976b9a628e
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a7cc35649d6976b9a628e)

@22222//push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a857b31723ff61801fff6
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a857b31723ff61801fff6)

@22222//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a0e3eaf2f20d30a301151
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a0e3eaf2f20d30a301151)

@22222//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call String.appendChar 2
// push return-label
@return_to_String.appendChar_from_String.appendChar_a229d960b179e7c1ced6c
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
// goto String.appendChar
@String.appendChar
0;JMP
// (return-address)
(return_to_String.appendChar_from_String.appendChar_a229d960b179e7c1ced6c)

@22222//call Output.printString 1
// push return-label
@return_to_String.appendChar_from_Output.printString_a80595ffe99f9eb7a240d
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
// goto Output.printString
@Output.printString
0;JMP
// (return-address)
(return_to_String.appendChar_from_Output.printString_a80595ffe99f9eb7a240d)

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

@22222//goto label_13
@PongGame.run$label_13
0;JMP

@22222//label label_12
(PongGame.run$label_12)

@22222//label label_13
(PongGame.run$label_13)

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

@22222//function PongGame.moveBall 5
(PongGame.moveBall)
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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Ball.move 0
// push return-label
@return_to_String.appendChar_from_Ball.move_adbf9759d54b3f562c465
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
// goto Ball.move
@Ball.move
0;JMP
// (return-address)
(return_to_String.appendChar_from_Ball.move_adbf9759d54b3f562c465)

@22222//pop this 2
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

@22222//push this 2
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@PongGame.moveBall$a32e1dd44d606101dfaff
D;JLE
@SP
A=M-1
M=-1
@PongGame.moveBall$after-a32e1dd44d606101dfaff
0;JMP
(PongGame.moveBall$a32e1dd44d606101dfaff)
@SP
A=M-1
M=0
(PongGame.moveBall$after-a32e1dd44d606101dfaff)

@22222//push this 2
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

@22222//push this 5
@5
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@PongGame.moveBall$ab09e34f8c0bcf1f07b42
D;JNE
@SP
A=M-1
M=-1
@PongGame.moveBall$after-ab09e34f8c0bcf1f07b42
0;JMP
(PongGame.moveBall$ab09e34f8c0bcf1f07b42)
@SP
A=M-1
M=0
(PongGame.moveBall$after-ab09e34f8c0bcf1f07b42)

@22222//not
@SP
A=M-1
M=!M

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_14
@SP
M=M-1
A=M
D=M
M=0
@PongGame.moveBall$label_14
D;JNE

@22222//push this 2
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

@22222//pop this 5
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 0
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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Bat.getLeft 0
// push return-label
@return_to_Ball.move_from_Bat.getLeft_aa1900558e0383bb4f785
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
// goto Bat.getLeft
@Bat.getLeft
0;JMP
// (return-address)
(return_to_Ball.move_from_Bat.getLeft_aa1900558e0383bb4f785)

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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Bat.getRight 0
// push return-label
@return_to_Bat.getLeft_from_Bat.getRight_a9b3fa9f690f6fbd9db29
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
// goto Bat.getRight
@Bat.getRight
0;JMP
// (return-address)
(return_to_Bat.getLeft_from_Bat.getRight_a9b3fa9f690f6fbd9db29)

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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Ball.getLeft 0
// push return-label
@return_to_Bat.getRight_from_Ball.getLeft_a44fa3bfddc639f336cb7
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
// goto Ball.getLeft
@Ball.getLeft
0;JMP
// (return-address)
(return_to_Bat.getRight_from_Ball.getLeft_a44fa3bfddc639f336cb7)

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

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Ball.getRight 0
// push return-label
@return_to_Ball.getLeft_from_Ball.getRight_ae36ab42ca6655135ffd3
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
// goto Ball.getRight
@Ball.getRight
0;JMP
// (return-address)
(return_to_Ball.getLeft_from_Ball.getRight_ae36ab42ca6655135ffd3)

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//push this 2
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

@22222//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@PongGame.moveBall$a67917421f2d0a9e0097a
D;JNE
@SP
A=M-1
M=-1
@PongGame.moveBall$after-a67917421f2d0a9e0097a
0;JMP
(PongGame.moveBall$a67917421f2d0a9e0097a)
@SP
A=M-1
M=0
(PongGame.moveBall$after-a67917421f2d0a9e0097a)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_16
@SP
M=M-1
A=M
D=M
M=0
@PongGame.moveBall$label_16
D;JNE

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

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@PongGame.moveBall$a7fbea69fe4c16bd4b0b3
D;JLE
@SP
A=M-1
M=-1
@PongGame.moveBall$after-a7fbea69fe4c16bd4b0b3
0;JMP
(PongGame.moveBall$a7fbea69fe4c16bd4b0b3)
@SP
A=M-1
M=0
(PongGame.moveBall$after-a7fbea69fe4c16bd4b0b3)

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
@PongGame.moveBall$aeb4cf5efa28b6ff83725
D;JGE
@SP
A=M-1
M=-1
@PongGame.moveBall$after-aeb4cf5efa28b6ff83725
0;JMP
(PongGame.moveBall$aeb4cf5efa28b6ff83725)
@SP
A=M-1
M=0
(PongGame.moveBall$after-aeb4cf5efa28b6ff83725)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//pop this 3
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

@22222//push this 3
@3
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_18
@SP
M=M-1
A=M
D=M
M=0
@PongGame.moveBall$label_18
D;JNE

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

@22222//push constant 10
@10
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
@PongGame.moveBall$a255d75b9e31e36f2c844
D;JGE
@SP
A=M-1
M=-1
@PongGame.moveBall$after-a255d75b9e31e36f2c844
0;JMP
(PongGame.moveBall$a255d75b9e31e36f2c844)
@SP
A=M-1
M=0
(PongGame.moveBall$after-a255d75b9e31e36f2c844)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_20
@SP
M=M-1
A=M
D=M
M=0
@PongGame.moveBall$label_20
D;JNE

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//pop local 0
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

@22222//goto label_21
@PongGame.moveBall$label_21
0;JMP

@22222//label label_20
(PongGame.moveBall$label_20)

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

@22222//push constant 10
@10
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

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@PongGame.moveBall$a10c97653c329c34b1625
D;JLE
@SP
A=M-1
M=-1
@PongGame.moveBall$after-a10c97653c329c34b1625
0;JMP
(PongGame.moveBall$a10c97653c329c34b1625)
@SP
A=M-1
M=0
(PongGame.moveBall$after-a10c97653c329c34b1625)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto label_22
@SP
M=M-1
A=M
D=M
M=0
@PongGame.moveBall$label_22
D;JNE

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 0
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

@22222//goto label_23
@PongGame.moveBall$label_23
0;JMP

@22222//label label_22
(PongGame.moveBall$label_22)

@22222//label label_23
(PongGame.moveBall$label_23)

@22222//label label_21
(PongGame.moveBall$label_21)

@22222//push this 6
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

@22222//pop this 6
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
A=M
M=D

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 6
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

@22222//call Bat.setWidth 1
// push return-label
@return_to_Ball.getRight_from_Bat.setWidth_a604d0d4ec2e76cc89c8e
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
// goto Bat.setWidth
@Bat.setWidth
0;JMP
// (return-address)
(return_to_Ball.getRight_from_Bat.setWidth_a604d0d4ec2e76cc89c8e)

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

@22222//push this 4
@4
D=A
@THIS
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

@22222//pop this 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.moveCursor 2
// push return-label
@return_to_Bat.setWidth_from_Output.moveCursor_a773844610e9758816e56
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
// goto Output.moveCursor
@Output.moveCursor
0;JMP
// (return-address)
(return_to_Bat.setWidth_from_Output.moveCursor_a773844610e9758816e56)

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

@22222//push this 4
@4
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.printInt 1
// push return-label
@return_to_Output.moveCursor_from_Output.printInt_acdd65d5f929da7c520f4
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
// goto Output.printInt
@Output.printInt
0;JMP
// (return-address)
(return_to_Output.moveCursor_from_Output.printInt_acdd65d5f929da7c520f4)

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

@22222//goto label_19
@PongGame.moveBall$label_19
0;JMP

@22222//label label_18
(PongGame.moveBall$label_18)

@22222//label label_19
(PongGame.moveBall$label_19)

@22222//goto label_17
@PongGame.moveBall$label_17
0;JMP

@22222//label label_16
(PongGame.moveBall$label_16)

@22222//label label_17
(PongGame.moveBall$label_17)

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//call Ball.bounce 1
// push return-label
@return_to_Output.printInt_from_Ball.bounce_ac0ee57e92182cdbe1aa8
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
// goto Ball.bounce
@Ball.bounce
0;JMP
// (return-address)
(return_to_Output.printInt_from_Ball.bounce_ac0ee57e92182cdbe1aa8)

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

@22222//goto label_15
@PongGame.moveBall$label_15
0;JMP

@22222//label label_14
(PongGame.moveBall$label_14)

@22222//label label_15
(PongGame.moveBall$label_15)

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

@22222//function Screen.init 1
(Screen.init)
@SP
A=M
M=0
@SP
M=M+1

@22222//push constant 16384
@16384
D=A
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
@Screen.1
M=D

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//pop static 2
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Screen.2
M=D

@22222//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Array.new 1
// push return-label
@return_to_Output.printInt_from_Array.new_a2c5fd6ee457139301615
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
// goto Array.new
@Array.new
0;JMP
// (return-address)
(return_to_Output.printInt_from_Array.new_a2c5fd6ee457139301615)

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
@Screen.0
M=D

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push static 0
@Screen.0
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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//label WHILE_EXP0
(Screen.init$WHILE_EXP0)

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

@22222//push constant 16
@16
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
@Screen.init$a18919398cae9a6aaf0fd
D;JGE
@SP
A=M-1
M=-1
@Screen.init$after-a18919398cae9a6aaf0fd
0;JMP
(Screen.init$a18919398cae9a6aaf0fd)
@SP
A=M-1
M=0
(Screen.init$after-a18919398cae9a6aaf0fd)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Screen.init$WHILE_END0
D;JNE

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

@22222//pop local 0
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

@22222//push static 0
@Screen.0
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

@22222//push static 0
@Screen.0
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

@22222//push static 0
@Screen.0
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//goto WHILE_EXP0
@Screen.init$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Screen.init$WHILE_END0)

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

@22222//function Screen.clearScreen 1
(Screen.clearScreen)
@SP
A=M
M=0
@SP
M=M+1

@22222//label WHILE_EXP0
(Screen.clearScreen$WHILE_EXP0)

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

@22222//push constant 8192
@8192
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
@Screen.clearScreen$a2a59292ff1e0ff798b49
D;JGE
@SP
A=M-1
M=-1
@Screen.clearScreen$after-a2a59292ff1e0ff798b49
0;JMP
(Screen.clearScreen$a2a59292ff1e0ff798b49)
@SP
A=M-1
M=0
(Screen.clearScreen$after-a2a59292ff1e0ff798b49)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Screen.clearScreen$WHILE_END0
D;JNE

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

@22222//push static 1
@Screen.1
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//pop local 0
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

@22222//goto WHILE_EXP0
@Screen.clearScreen$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Screen.clearScreen$WHILE_END0)

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

@22222//function Screen.updateLocation 0
(Screen.updateLocation)

@22222//push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Screen.updateLocation$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Screen.updateLocation$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Screen.updateLocation$IF_TRUE0)

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

@22222//push static 1
@Screen.1
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

@22222//push static 1
@Screen.1
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

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//goto IF_END0
@Screen.updateLocation$IF_END0
0;JMP

@22222//label IF_FALSE0
(Screen.updateLocation$IF_FALSE0)

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

@22222//push static 1
@Screen.1
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

@22222//push static 1
@Screen.1
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

@22222//not
@SP
A=M-1
M=!M

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//label IF_END0
(Screen.updateLocation$IF_END0)

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

@22222//function Screen.setColor 0
(Screen.setColor)

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

@22222//pop static 2
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@Screen.2
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

@22222//function Screen.drawPixel 3
(Screen.drawPixel)
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

@22222//push constant 0
@0
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
@Screen.drawPixel$a7e5060843290ba11dbdc
D;JGE
@SP
A=M-1
M=-1
@Screen.drawPixel$after-a7e5060843290ba11dbdc
0;JMP
(Screen.drawPixel$a7e5060843290ba11dbdc)
@SP
A=M-1
M=0
(Screen.drawPixel$after-a7e5060843290ba11dbdc)

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

@22222//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawPixel$ab60286bf9641d389dcd4
D;JLE
@SP
A=M-1
M=-1
@Screen.drawPixel$after-ab60286bf9641d389dcd4
0;JMP
(Screen.drawPixel$ab60286bf9641d389dcd4)
@SP
A=M-1
M=0
(Screen.drawPixel$after-ab60286bf9641d389dcd4)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push constant 0
@0
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
@Screen.drawPixel$a24f06997c16cd9765351
D;JGE
@SP
A=M-1
M=-1
@Screen.drawPixel$after-a24f06997c16cd9765351
0;JMP
(Screen.drawPixel$a24f06997c16cd9765351)
@SP
A=M-1
M=0
(Screen.drawPixel$after-a24f06997c16cd9765351)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawPixel$aa52f146905d13f2ddc3b
D;JLE
@SP
A=M-1
M=-1
@Screen.drawPixel$after-aa52f146905d13f2ddc3b
0;JMP
(Screen.drawPixel$aa52f146905d13f2ddc3b)
@SP
A=M-1
M=0
(Screen.drawPixel$after-aa52f146905d13f2ddc3b)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawPixel$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Screen.drawPixel$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Screen.drawPixel$IF_TRUE0)

@22222//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Output.printInt_from_Sys.error_a735c114c23787fb2ee10
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Output.printInt_from_Sys.error_a735c114c23787fb2ee10)

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

@22222//label IF_FALSE0
(Screen.drawPixel$IF_FALSE0)

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

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.divide 2
// push return-label
@return_to_Sys.error_from_Math.divide_a5bda8f07fefee30162f7
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Sys.error_from_Math.divide_a5bda8f07fefee30162f7)

@22222//pop local 0
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

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_a94be0582715f830b1db4
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_a94be0582715f830b1db4)

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

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_a7c72acd375b1261e35f0
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_a7c72acd375b1261e35f0)

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

@22222//push static 0
@Screen.0
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

@22222//call Screen.updateLocation 2
// push return-label
@return_to_Math.multiply_from_Screen.updateLocation_a17c756bcf52248df0b47
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
// (return-address)
(return_to_Math.multiply_from_Screen.updateLocation_a17c756bcf52248df0b47)

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

@22222//function Screen.drawConditional 0
(Screen.drawConditional)

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawConditional$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Screen.drawConditional$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Screen.drawConditional$IF_TRUE0)

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

@22222//call Screen.drawPixel 2
// push return-label
@return_to_Math.multiply_from_Screen.drawPixel_a0b4feeed51e54b0d14bb
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
// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
// (return-address)
(return_to_Math.multiply_from_Screen.drawPixel_a0b4feeed51e54b0d14bb)

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

@22222//goto IF_END0
@Screen.drawConditional$IF_END0
0;JMP

@22222//label IF_FALSE0
(Screen.drawConditional$IF_FALSE0)

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

@22222//call Screen.drawPixel 2
// push return-label
@return_to_Screen.drawPixel_from_Screen.drawPixel_af870b97cc3af1a3b2856
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
// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
// (return-address)
(return_to_Screen.drawPixel_from_Screen.drawPixel_af870b97cc3af1a3b2856)

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

@22222//label IF_END0
(Screen.drawConditional$IF_END0)

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

@22222//function Screen.drawLine 11
(Screen.drawLine)
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
@SP
A=M
M=0
@SP
M=M+1

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

@22222//push constant 0
@0
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
@Screen.drawLine$af9d6266a07682add88e9
D;JGE
@SP
A=M-1
M=-1
@Screen.drawLine$after-af9d6266a07682add88e9
0;JMP
(Screen.drawLine$af9d6266a07682add88e9)
@SP
A=M-1
M=0
(Screen.drawLine$after-af9d6266a07682add88e9)

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawLine$a9ec18517299998a38566
D;JLE
@SP
A=M-1
M=-1
@Screen.drawLine$after-a9ec18517299998a38566
0;JMP
(Screen.drawLine$a9ec18517299998a38566)
@SP
A=M-1
M=0
(Screen.drawLine$after-a9ec18517299998a38566)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push constant 0
@0
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
@Screen.drawLine$a828ae28650c966812a17
D;JGE
@SP
A=M-1
M=-1
@Screen.drawLine$after-a828ae28650c966812a17
0;JMP
(Screen.drawLine$a828ae28650c966812a17)
@SP
A=M-1
M=0
(Screen.drawLine$after-a828ae28650c966812a17)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawLine$aab86a97469df89fc1483
D;JLE
@SP
A=M-1
M=-1
@Screen.drawLine$after-aab86a97469df89fc1483
0;JMP
(Screen.drawLine$aab86a97469df89fc1483)
@SP
A=M-1
M=0
(Screen.drawLine$after-aab86a97469df89fc1483)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawLine$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Screen.drawLine$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Screen.drawLine$IF_TRUE0)

@22222//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Screen.drawPixel_from_Sys.error_a77132c5fd22ee56ec807
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Screen.drawPixel_from_Sys.error_a77132c5fd22ee56ec807)

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

@22222//label IF_FALSE0
(Screen.drawLine$IF_FALSE0)

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//call Math.abs 1
// push return-label
@return_to_Sys.error_from_Math.abs_ab372163215c2ab8f6d63
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
// goto Math.abs
@Math.abs
0;JMP
// (return-address)
(return_to_Sys.error_from_Math.abs_ab372163215c2ab8f6d63)

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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//call Math.abs 1
// push return-label
@return_to_Math.abs_from_Math.abs_a6edd722bdf4ac823e48d
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
// goto Math.abs
@Math.abs
0;JMP
// (return-address)
(return_to_Math.abs_from_Math.abs_a6edd722bdf4ac823e48d)

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
@Screen.drawLine$a3ea880626e85c51fb5ec
D;JGE
@SP
A=M-1
M=-1
@Screen.drawLine$after-a3ea880626e85c51fb5ec
0;JMP
(Screen.drawLine$a3ea880626e85c51fb5ec)
@SP
A=M-1
M=0
(Screen.drawLine$after-a3ea880626e85c51fb5ec)

@22222//pop local 6
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

@22222//push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Screen.drawLine$a95cb2f99315031312525
D;JGE
@SP
A=M-1
M=-1
@Screen.drawLine$after-a95cb2f99315031312525
0;JMP
(Screen.drawLine$a95cb2f99315031312525)
@SP
A=M-1
M=0
(Screen.drawLine$after-a95cb2f99315031312525)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Screen.drawLine$ae46bc15c82a064a645ae
D;JGE
@SP
A=M-1
M=-1
@Screen.drawLine$after-ae46bc15c82a064a645ae
0;JMP
(Screen.drawLine$ae46bc15c82a064a645ae)
@SP
A=M-1
M=0
(Screen.drawLine$after-ae46bc15c82a064a645ae)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawLine$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Screen.drawLine$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Screen.drawLine$IF_TRUE1)

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

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//pop argument 2
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
A=M
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

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop argument 1
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
A=M
M=D

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

@22222//pop argument 3
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

@22222//label IF_FALSE1
(Screen.drawLine$IF_FALSE1)

@22222//push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawLine$IF_TRUE2
D;JNE

@22222//goto IF_FALSE2
@Screen.drawLine$IF_FALSE2
0;JMP

@22222//label IF_TRUE2
(Screen.drawLine$IF_TRUE2)

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

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//pop local 0
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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 8
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@8
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawLine$a958fbc67f33ffb5bde17
D;JLE
@SP
A=M-1
M=-1
@Screen.drawLine$after-a958fbc67f33ffb5bde17
0;JMP
(Screen.drawLine$a958fbc67f33ffb5bde17)
@SP
A=M-1
M=0
(Screen.drawLine$after-a958fbc67f33ffb5bde17)

@22222//pop local 7
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@7
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

@22222//goto IF_END2
@Screen.drawLine$IF_END2
0;JMP

@22222//label IF_FALSE2
(Screen.drawLine$IF_FALSE2)

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

@22222//pop local 0
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 8
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@8
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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawLine$a347d2b13db9f9cdb965b
D;JLE
@SP
A=M-1
M=-1
@Screen.drawLine$after-a347d2b13db9f9cdb965b
0;JMP
(Screen.drawLine$a347d2b13db9f9cdb965b)
@SP
A=M-1
M=0
(Screen.drawLine$after-a347d2b13db9f9cdb965b)

@22222//pop local 7
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@7
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

@22222//label IF_END2
(Screen.drawLine$IF_END2)

@22222//push constant 2
@2
D=A
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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.abs_from_Math.multiply_af4a2a751e356ff246495
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.abs_from_Math.multiply_af4a2a751e356ff246495)

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

@22222//pop local 5
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

@22222//push constant 2
@2
D=A
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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_a184b72c189a54f5d5ad1
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_a184b72c189a54f5d5ad1)

@22222//pop local 9
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@9
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

@22222//push constant 2
@2
D=A
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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_aeed6eda3a4fdb86e9bcd
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_aeed6eda3a4fdb86e9bcd)

@22222//pop local 10
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@10
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

@22222//push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Screen.drawConditional 3
// push return-label
@return_to_Math.multiply_from_Screen.drawConditional_a32205a2dfb628ba38d91
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
@3
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawConditional
@Screen.drawConditional
0;JMP
// (return-address)
(return_to_Math.multiply_from_Screen.drawConditional_a32205a2dfb628ba38d91)

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

@22222//label WHILE_EXP0
(Screen.drawLine$WHILE_EXP0)

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

@22222//push local 8
@8
D=A
@LCL
A=M+D
D=M
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
@Screen.drawLine$a2975bdc6d2a9e934068b
D;JGE
@SP
A=M-1
M=-1
@Screen.drawLine$after-a2975bdc6d2a9e934068b
0;JMP
(Screen.drawLine$a2975bdc6d2a9e934068b)
@SP
A=M-1
M=0
(Screen.drawLine$after-a2975bdc6d2a9e934068b)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawLine$WHILE_END0
D;JNE

@22222//push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
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
@Screen.drawLine$ab1619170f84fb21b0306
D;JGE
@SP
A=M-1
M=-1
@Screen.drawLine$after-ab1619170f84fb21b0306
0;JMP
(Screen.drawLine$ab1619170f84fb21b0306)
@SP
A=M-1
M=0
(Screen.drawLine$after-ab1619170f84fb21b0306)

@22222//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawLine$IF_TRUE3
D;JNE

@22222//goto IF_FALSE3
@Screen.drawLine$IF_FALSE3
0;JMP

@22222//label IF_TRUE3
(Screen.drawLine$IF_TRUE3)

@22222//push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push local 9
@9
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

@22222//pop local 5
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

@22222//goto IF_END3
@Screen.drawLine$IF_END3
0;JMP

@22222//label IF_FALSE3
(Screen.drawLine$IF_FALSE3)

@22222//push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push local 10
@10
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

@22222//pop local 5
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

@22222//push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawLine$IF_TRUE4
D;JNE

@22222//goto IF_FALSE4
@Screen.drawLine$IF_FALSE4
0;JMP

@22222//label IF_TRUE4
(Screen.drawLine$IF_TRUE4)

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

@22222//pop local 0
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

@22222//goto IF_END4
@Screen.drawLine$IF_END4
0;JMP

@22222//label IF_FALSE4
(Screen.drawLine$IF_FALSE4)

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

@22222//pop local 0
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

@22222//label IF_END4
(Screen.drawLine$IF_END4)

@22222//label IF_END3
(Screen.drawLine$IF_END3)

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

@22222//push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Screen.drawConditional 3
// push return-label
@return_to_Screen.drawConditional_from_Screen.drawConditional_aabbda868cf5c08f43842
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
@3
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawConditional
@Screen.drawConditional
0;JMP
// (return-address)
(return_to_Screen.drawConditional_from_Screen.drawConditional_aabbda868cf5c08f43842)

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

@22222//goto WHILE_EXP0
@Screen.drawLine$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Screen.drawLine$WHILE_END0)

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

@22222//function Screen.drawRectangle 9
(Screen.drawRectangle)
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawRectangle$aa28c5965c750c371aca6
D;JLE
@SP
A=M-1
M=-1
@Screen.drawRectangle$after-aa28c5965c750c371aca6
0;JMP
(Screen.drawRectangle$aa28c5965c750c371aca6)
@SP
A=M-1
M=0
(Screen.drawRectangle$after-aa28c5965c750c371aca6)

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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawRectangle$ac4685bf119751c8c459a
D;JLE
@SP
A=M-1
M=-1
@Screen.drawRectangle$after-ac4685bf119751c8c459a
0;JMP
(Screen.drawRectangle$ac4685bf119751c8c459a)
@SP
A=M-1
M=0
(Screen.drawRectangle$after-ac4685bf119751c8c459a)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push constant 0
@0
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
@Screen.drawRectangle$a7721b661db24905f057f
D;JGE
@SP
A=M-1
M=-1
@Screen.drawRectangle$after-a7721b661db24905f057f
0;JMP
(Screen.drawRectangle$a7721b661db24905f057f)
@SP
A=M-1
M=0
(Screen.drawRectangle$after-a7721b661db24905f057f)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawRectangle$ae386c55780ebe2463a49
D;JLE
@SP
A=M-1
M=-1
@Screen.drawRectangle$after-ae386c55780ebe2463a49
0;JMP
(Screen.drawRectangle$ae386c55780ebe2463a49)
@SP
A=M-1
M=0
(Screen.drawRectangle$after-ae386c55780ebe2463a49)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push constant 0
@0
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
@Screen.drawRectangle$aa1241e85ac47b3eb420f
D;JGE
@SP
A=M-1
M=-1
@Screen.drawRectangle$after-aa1241e85ac47b3eb420f
0;JMP
(Screen.drawRectangle$aa1241e85ac47b3eb420f)
@SP
A=M-1
M=0
(Screen.drawRectangle$after-aa1241e85ac47b3eb420f)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawRectangle$a3d9e3c6e5af89a5baf9f
D;JLE
@SP
A=M-1
M=-1
@Screen.drawRectangle$after-a3d9e3c6e5af89a5baf9f
0;JMP
(Screen.drawRectangle$a3d9e3c6e5af89a5baf9f)
@SP
A=M-1
M=0
(Screen.drawRectangle$after-a3d9e3c6e5af89a5baf9f)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawRectangle$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Screen.drawRectangle$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Screen.drawRectangle$IF_TRUE0)

@22222//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Screen.drawConditional_from_Sys.error_a8f041c4a1216fb2cde14
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Screen.drawConditional_from_Sys.error_a8f041c4a1216fb2cde14)

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

@22222//label IF_FALSE0
(Screen.drawRectangle$IF_FALSE0)

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

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.divide 2
// push return-label
@return_to_Sys.error_from_Math.divide_a4c66002a57821247759b
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Sys.error_from_Math.divide_a4c66002a57821247759b)

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

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_aaef1ab38a52d7aa708a8
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_aaef1ab38a52d7aa708a8)

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

@22222//pop local 7
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@7
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.divide 2
// push return-label
@return_to_Math.multiply_from_Math.divide_aa3b8cef47b9f271ce416
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.divide_aa3b8cef47b9f271ce416)

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//push argument 2
@2
D=A
@ARG
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

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_ace049d15c294e7d0ea6a
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_ace049d15c294e7d0ea6a)

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

@22222//pop local 8
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@8
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

@22222//push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push static 0
@Screen.0
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

@22222//not
@SP
A=M-1
M=!M

@22222//pop local 6
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

@22222//push local 8
@8
D=A
@LCL
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

@22222//push static 0
@Screen.0
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

@22222//pop local 5
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

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_a4aba732e812cd9313461
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_a4aba732e812cd9313461)

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

@22222//pop local 0
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

@22222//label WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0)

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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawRectangle$a823f5432a8c498ba1ee5
D;JLE
@SP
A=M-1
M=-1
@Screen.drawRectangle$after-a823f5432a8c498ba1ee5
0;JMP
(Screen.drawRectangle$a823f5432a8c498ba1ee5)
@SP
A=M-1
M=0
(Screen.drawRectangle$after-a823f5432a8c498ba1ee5)

@22222//not
@SP
A=M-1
M=!M

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawRectangle$WHILE_END0
D;JNE

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawRectangle$ab01605926a3135722ad2
D;JNE
@SP
A=M-1
M=-1
@Screen.drawRectangle$after-ab01605926a3135722ad2
0;JMP
(Screen.drawRectangle$ab01605926a3135722ad2)
@SP
A=M-1
M=0
(Screen.drawRectangle$after-ab01605926a3135722ad2)

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawRectangle$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Screen.drawRectangle$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Screen.drawRectangle$IF_TRUE1)

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

@22222//push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//call Screen.updateLocation 2
// push return-label
@return_to_Math.multiply_from_Screen.updateLocation_a6cd0b2c1893de47070ca
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
// (return-address)
(return_to_Math.multiply_from_Screen.updateLocation_a6cd0b2c1893de47070ca)

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

@22222//goto IF_END1
@Screen.drawRectangle$IF_END1
0;JMP

@22222//label IF_FALSE1
(Screen.drawRectangle$IF_FALSE1)

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

@22222//push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Screen.updateLocation 2
// push return-label
@return_to_Screen.updateLocation_from_Screen.updateLocation_adf607eeef08dfcbdad42
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
// (return-address)
(return_to_Screen.updateLocation_from_Screen.updateLocation_adf607eeef08dfcbdad42)

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

@22222//pop local 0
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

@22222//label WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1)

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
@Screen.drawRectangle$a94c386138587ea01bd00
D;JGE
@SP
A=M-1
M=-1
@Screen.drawRectangle$after-a94c386138587ea01bd00
0;JMP
(Screen.drawRectangle$a94c386138587ea01bd00)
@SP
A=M-1
M=0
(Screen.drawRectangle$after-a94c386138587ea01bd00)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawRectangle$WHILE_END1
D;JNE

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//call Screen.updateLocation 2
// push return-label
@return_to_Screen.updateLocation_from_Screen.updateLocation_a3f8b05f2a20e79cf57cb
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
// (return-address)
(return_to_Screen.updateLocation_from_Screen.updateLocation_a3f8b05f2a20e79cf57cb)

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

@22222//pop local 0
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

@22222//goto WHILE_EXP1
@Screen.drawRectangle$WHILE_EXP1
0;JMP

@22222//label WHILE_END1
(Screen.drawRectangle$WHILE_END1)

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

@22222//push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Screen.updateLocation 2
// push return-label
@return_to_Screen.updateLocation_from_Screen.updateLocation_af10ba26b91b806f43802
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
// (return-address)
(return_to_Screen.updateLocation_from_Screen.updateLocation_af10ba26b91b806f43802)

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

@22222//label IF_END1
(Screen.drawRectangle$IF_END1)

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

@22222//pop argument 1
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
A=M
M=D

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

@22222//push constant 32
@32
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

@22222//pop local 0
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

@22222//goto WHILE_EXP0
@Screen.drawRectangle$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Screen.drawRectangle$WHILE_END0)

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

@22222//function Screen.drawHorizontal 11
(Screen.drawHorizontal)
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
@SP
A=M
M=0
@SP
M=M+1

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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.min 2
// push return-label
@return_to_Screen.updateLocation_from_Math.min_a99f4ad3690687e01d92d
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
// goto Math.min
@Math.min
0;JMP
// (return-address)
(return_to_Screen.updateLocation_from_Math.min_a99f4ad3690687e01d92d)

@22222//pop local 7
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@7
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.max 2
// push return-label
@return_to_Math.min_from_Math.max_acb957cd9a7777a9b5185
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
// goto Math.max
@Math.max
0;JMP
// (return-address)
(return_to_Math.min_from_Math.max_acb957cd9a7777a9b5185)

@22222//pop local 8
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@8
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

@22222//neg
@SP
A=M-1
M=-M

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawHorizontal$a12bc9ff71e777e0d0350
D;JLE
@SP
A=M-1
M=-1
@Screen.drawHorizontal$after-a12bc9ff71e777e0d0350
0;JMP
(Screen.drawHorizontal$a12bc9ff71e777e0d0350)
@SP
A=M-1
M=0
(Screen.drawHorizontal$after-a12bc9ff71e777e0d0350)

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

@22222//push constant 256
@256
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
@Screen.drawHorizontal$a18722ad5c028d67f9d57
D;JGE
@SP
A=M-1
M=-1
@Screen.drawHorizontal$after-a18722ad5c028d67f9d57
0;JMP
(Screen.drawHorizontal$a18722ad5c028d67f9d57)
@SP
A=M-1
M=0
(Screen.drawHorizontal$after-a18722ad5c028d67f9d57)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 512
@512
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
@Screen.drawHorizontal$ae3edf449609e40961efd
D;JGE
@SP
A=M-1
M=-1
@Screen.drawHorizontal$after-ae3edf449609e40961efd
0;JMP
(Screen.drawHorizontal$ae3edf449609e40961efd)
@SP
A=M-1
M=0
(Screen.drawHorizontal$after-ae3edf449609e40961efd)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//push local 8
@8
D=A
@LCL
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

@22222//neg
@SP
A=M-1
M=-M

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawHorizontal$aacc61f6ac971ad936af8
D;JLE
@SP
A=M-1
M=-1
@Screen.drawHorizontal$after-aacc61f6ac971ad936af8
0;JMP
(Screen.drawHorizontal$aacc61f6ac971ad936af8)
@SP
A=M-1
M=0
(Screen.drawHorizontal$after-aacc61f6ac971ad936af8)

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawHorizontal$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Screen.drawHorizontal$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Screen.drawHorizontal$IF_TRUE0)

@22222//push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.max 2
// push return-label
@return_to_Math.max_from_Math.max_aa37bdefb33cb3ab9a1df
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
// goto Math.max
@Math.max
0;JMP
// (return-address)
(return_to_Math.max_from_Math.max_aa37bdefb33cb3ab9a1df)

@22222//pop local 7
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@7
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

@22222//push local 8
@8
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.min 2
// push return-label
@return_to_Math.max_from_Math.min_a7abe2be51418992ed489
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
// goto Math.min
@Math.min
0;JMP
// (return-address)
(return_to_Math.max_from_Math.min_a7abe2be51418992ed489)

@22222//pop local 8
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@8
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

@22222//push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.divide 2
// push return-label
@return_to_Math.min_from_Math.divide_a124693cd0e70c38d0d20
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Math.min_from_Math.divide_a124693cd0e70c38d0d20)

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

@22222//push local 7
@7
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

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_a0f44002c67f5e8285d3a
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_a0f44002c67f5e8285d3a)

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

@22222//pop local 9
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@9
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

@22222//push local 8
@8
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.divide 2
// push return-label
@return_to_Math.multiply_from_Math.divide_abd4e26b2ac716863e469
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.divide_abd4e26b2ac716863e469)

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

@22222//push local 8
@8
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

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_a0379d3d1250ff883aca0
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_a0379d3d1250ff883aca0)

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

@22222//pop local 10
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@10
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

@22222//push local 9
@9
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push static 0
@Screen.0
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

@22222//not
@SP
A=M-1
M=!M

@22222//pop local 5
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

@22222//push local 10
@10
D=A
@LCL
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

@22222//push static 0
@Screen.0
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

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_aca90fafb310c78e26c02
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_aca90fafb310c78e26c02)

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

@22222//pop local 0
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

@22222//pop local 6
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

@22222//push local 6
@6
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

@22222//push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawHorizontal$acf45895694c1a06b8cc2
D;JNE
@SP
A=M-1
M=-1
@Screen.drawHorizontal$after-acf45895694c1a06b8cc2
0;JMP
(Screen.drawHorizontal$acf45895694c1a06b8cc2)
@SP
A=M-1
M=0
(Screen.drawHorizontal$after-acf45895694c1a06b8cc2)

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawHorizontal$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Screen.drawHorizontal$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Screen.drawHorizontal$IF_TRUE1)

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

@22222//push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//call Screen.updateLocation 2
// push return-label
@return_to_Math.multiply_from_Screen.updateLocation_afcb8d3f581cf474671e4
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
// (return-address)
(return_to_Math.multiply_from_Screen.updateLocation_afcb8d3f581cf474671e4)

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

@22222//goto IF_END1
@Screen.drawHorizontal$IF_END1
0;JMP

@22222//label IF_FALSE1
(Screen.drawHorizontal$IF_FALSE1)

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

@22222//push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Screen.updateLocation 2
// push return-label
@return_to_Screen.updateLocation_from_Screen.updateLocation_a63ea44b71d629467e70f
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
// (return-address)
(return_to_Screen.updateLocation_from_Screen.updateLocation_a63ea44b71d629467e70f)

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

@22222//pop local 0
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

@22222//label WHILE_EXP0
(Screen.drawHorizontal$WHILE_EXP0)

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
@Screen.drawHorizontal$a63383c304471fa7f184d
D;JGE
@SP
A=M-1
M=-1
@Screen.drawHorizontal$after-a63383c304471fa7f184d
0;JMP
(Screen.drawHorizontal$a63383c304471fa7f184d)
@SP
A=M-1
M=0
(Screen.drawHorizontal$after-a63383c304471fa7f184d)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawHorizontal$WHILE_END0
D;JNE

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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//neg
@SP
A=M-1
M=-M

@22222//call Screen.updateLocation 2
// push return-label
@return_to_Screen.updateLocation_from_Screen.updateLocation_afcf1a3e5b01227f84fcd
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
// (return-address)
(return_to_Screen.updateLocation_from_Screen.updateLocation_afcf1a3e5b01227f84fcd)

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

@22222//pop local 0
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

@22222//goto WHILE_EXP0
@Screen.drawHorizontal$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Screen.drawHorizontal$WHILE_END0)

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

@22222//call Screen.updateLocation 2
// push return-label
@return_to_Screen.updateLocation_from_Screen.updateLocation_a2dc0841c7827503f4afe
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
// (return-address)
(return_to_Screen.updateLocation_from_Screen.updateLocation_a2dc0841c7827503f4afe)

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

@22222//label IF_END1
(Screen.drawHorizontal$IF_END1)

@22222//label IF_FALSE0
(Screen.drawHorizontal$IF_FALSE0)

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

@22222//function Screen.drawSymetric 0
(Screen.drawSymetric)

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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
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

@22222//push argument 2
@2
D=A
@ARG
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
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

@22222//call Screen.drawHorizontal 3
// push return-label
@return_to_Screen.updateLocation_from_Screen.drawHorizontal_a9957ca6d68d692435a97
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
@3
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
// (return-address)
(return_to_Screen.updateLocation_from_Screen.drawHorizontal_a9957ca6d68d692435a97)

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

@22222//push argument 3
@3
D=A
@ARG
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

@22222//push argument 2
@2
D=A
@ARG
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
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

@22222//call Screen.drawHorizontal 3
// push return-label
@return_to_Screen.drawHorizontal_from_Screen.drawHorizontal_a2a976946e827239f49ef
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
@3
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
// (return-address)
(return_to_Screen.drawHorizontal_from_Screen.drawHorizontal_a2a976946e827239f49ef)

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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
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

@22222//push argument 3
@3
D=A
@ARG
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

@22222//call Screen.drawHorizontal 3
// push return-label
@return_to_Screen.drawHorizontal_from_Screen.drawHorizontal_a96e1bef38b7dcdb3f396
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
@3
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
// (return-address)
(return_to_Screen.drawHorizontal_from_Screen.drawHorizontal_a96e1bef38b7dcdb3f396)

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

@22222//push argument 2
@2
D=A
@ARG
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

@22222//push argument 3
@3
D=A
@ARG
A=M+D
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

@22222//push argument 3
@3
D=A
@ARG
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

@22222//call Screen.drawHorizontal 3
// push return-label
@return_to_Screen.drawHorizontal_from_Screen.drawHorizontal_a42012d79481ddbc594d7
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
@3
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
// (return-address)
(return_to_Screen.drawHorizontal_from_Screen.drawHorizontal_a42012d79481ddbc594d7)

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

@22222//function Screen.drawCircle 3
(Screen.drawCircle)
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

@22222//push constant 0
@0
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
@Screen.drawCircle$abae8336a1489b8db935e
D;JGE
@SP
A=M-1
M=-1
@Screen.drawCircle$after-abae8336a1489b8db935e
0;JMP
(Screen.drawCircle$abae8336a1489b8db935e)
@SP
A=M-1
M=0
(Screen.drawCircle$after-abae8336a1489b8db935e)

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

@22222//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawCircle$abf7da8c14391a32faa98
D;JLE
@SP
A=M-1
M=-1
@Screen.drawCircle$after-abf7da8c14391a32faa98
0;JMP
(Screen.drawCircle$abf7da8c14391a32faa98)
@SP
A=M-1
M=0
(Screen.drawCircle$after-abf7da8c14391a32faa98)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push constant 0
@0
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
@Screen.drawCircle$acd11a45b0ad08ab7be9e
D;JGE
@SP
A=M-1
M=-1
@Screen.drawCircle$after-acd11a45b0ad08ab7be9e
0;JMP
(Screen.drawCircle$acd11a45b0ad08ab7be9e)
@SP
A=M-1
M=0
(Screen.drawCircle$after-acd11a45b0ad08ab7be9e)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawCircle$ab076a4decf0a86b15ff2
D;JLE
@SP
A=M-1
M=-1
@Screen.drawCircle$after-ab076a4decf0a86b15ff2
0;JMP
(Screen.drawCircle$ab076a4decf0a86b15ff2)
@SP
A=M-1
M=0
(Screen.drawCircle$after-ab076a4decf0a86b15ff2)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawCircle$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Screen.drawCircle$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Screen.drawCircle$IF_TRUE0)

@22222//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Screen.drawHorizontal_from_Sys.error_aa71d029c1552fb18dbd0
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Screen.drawHorizontal_from_Sys.error_aa71d029c1552fb18dbd0)

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

@22222//label IF_FALSE0
(Screen.drawCircle$IF_FALSE0)

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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
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

@22222//push constant 0
@0
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
@Screen.drawCircle$a16f98340cbb83aec7ab9
D;JGE
@SP
A=M-1
M=-1
@Screen.drawCircle$after-a16f98340cbb83aec7ab9
0;JMP
(Screen.drawCircle$a16f98340cbb83aec7ab9)
@SP
A=M-1
M=0
(Screen.drawCircle$after-a16f98340cbb83aec7ab9)

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

@22222//push argument 2
@2
D=A
@ARG
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

@22222//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawCircle$a9a86c1098881565354e7
D;JLE
@SP
A=M-1
M=-1
@Screen.drawCircle$after-a9a86c1098881565354e7
0;JMP
(Screen.drawCircle$a9a86c1098881565354e7)
@SP
A=M-1
M=0
(Screen.drawCircle$after-a9a86c1098881565354e7)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
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

@22222//push constant 0
@0
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
@Screen.drawCircle$af5734da45f02d9552273
D;JGE
@SP
A=M-1
M=-1
@Screen.drawCircle$after-af5734da45f02d9552273
0;JMP
(Screen.drawCircle$af5734da45f02d9552273)
@SP
A=M-1
M=0
(Screen.drawCircle$after-af5734da45f02d9552273)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push argument 2
@2
D=A
@ARG
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

@22222//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawCircle$a4036995fc4100955bc3b
D;JLE
@SP
A=M-1
M=-1
@Screen.drawCircle$after-a4036995fc4100955bc3b
0;JMP
(Screen.drawCircle$a4036995fc4100955bc3b)
@SP
A=M-1
M=0
(Screen.drawCircle$after-a4036995fc4100955bc3b)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawCircle$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@Screen.drawCircle$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(Screen.drawCircle$IF_TRUE1)

@22222//push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Sys.error_from_Sys.error_a990f8a511b70f02661c2
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Sys.error_from_Sys.error_a990f8a511b70f02661c2)

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

@22222//label IF_FALSE1
(Screen.drawCircle$IF_FALSE1)

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push argument 2
@2
D=A
@ARG
A=M+D
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

@22222//call Screen.drawSymetric 4
// push return-label
@return_to_Sys.error_from_Screen.drawSymetric_ac39794e4fbaad951d642
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
@4
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawSymetric
@Screen.drawSymetric
0;JMP
// (return-address)
(return_to_Sys.error_from_Screen.drawSymetric_ac39794e4fbaad951d642)

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

@22222//label WHILE_EXP0
(Screen.drawCircle$WHILE_EXP0)

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

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Screen.drawCircle$a226fdb9176b87006cd64
D;JLE
@SP
A=M-1
M=-1
@Screen.drawCircle$after-a226fdb9176b87006cd64
0;JMP
(Screen.drawCircle$a226fdb9176b87006cd64)
@SP
A=M-1
M=0
(Screen.drawCircle$after-a226fdb9176b87006cd64)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawCircle$WHILE_END0
D;JNE

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

@22222//push constant 0
@0
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
@Screen.drawCircle$a3ec9e26b10953b4dad4c
D;JGE
@SP
A=M-1
M=-1
@Screen.drawCircle$after-a3ec9e26b10953b4dad4c
0;JMP
(Screen.drawCircle$a3ec9e26b10953b4dad4c)
@SP
A=M-1
M=0
(Screen.drawCircle$after-a3ec9e26b10953b4dad4c)

@22222//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
M=0
@Screen.drawCircle$IF_TRUE2
D;JNE

@22222//goto IF_FALSE2
@Screen.drawCircle$IF_FALSE2
0;JMP

@22222//label IF_TRUE2
(Screen.drawCircle$IF_TRUE2)

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

@22222//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//call Math.multiply 2
// push return-label
@return_to_Screen.drawSymetric_from_Math.multiply_a96427147603e24f09b46
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Screen.drawSymetric_from_Math.multiply_a96427147603e24f09b46)

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

@22222//push constant 3
@3
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

@22222//goto IF_END2
@Screen.drawCircle$IF_END2
0;JMP

@22222//label IF_FALSE2
(Screen.drawCircle$IF_FALSE2)

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

@22222//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//call Math.multiply 2
// push return-label
@return_to_Math.multiply_from_Math.multiply_a4382b08e80502e358172
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.multiply_from_Math.multiply_a4382b08e80502e358172)

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

@22222//push constant 5
@5
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

@22222//label IF_END2
(Screen.drawCircle$IF_END2)

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

@22222//pop local 0
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

@22222//call Screen.drawSymetric 4
// push return-label
@return_to_Math.multiply_from_Screen.drawSymetric_a0d1bd3578059e517497e
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
@4
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto Screen.drawSymetric
@Screen.drawSymetric
0;JMP
// (return-address)
(return_to_Math.multiply_from_Screen.drawSymetric_a0d1bd3578059e517497e)

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

@22222//goto WHILE_EXP0
@Screen.drawCircle$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Screen.drawCircle$WHILE_END0)

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

@22222//function String.new 0
(String.new)

@22222//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Memory.alloc 1
// push return-label
@return_to_Math.multiply_from_Memory.alloc_a89df1b762b9974f9dad8
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
// goto Memory.alloc
@Memory.alloc
0;JMP
// (return-address)
(return_to_Math.multiply_from_Memory.alloc_a89df1b762b9974f9dad8)

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

@22222//push constant 0
@0
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
@String.new$ad75ce7113e64e1b0258a
D;JGE
@SP
A=M-1
M=-1
@String.new$after-ad75ce7113e64e1b0258a
0;JMP
(String.new$ad75ce7113e64e1b0258a)
@SP
A=M-1
M=0
(String.new$after-ad75ce7113e64e1b0258a)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@String.new$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@String.new$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(String.new$IF_TRUE0)

@22222//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Memory.alloc_from_Sys.error_a490ee7ad8ddfe591d8c7
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Memory.alloc_from_Sys.error_a490ee7ad8ddfe591d8c7)

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

@22222//label IF_FALSE0
(String.new$IF_FALSE0)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.new$aa7b80757bb24fe41126f
D;JLE
@SP
A=M-1
M=-1
@String.new$after-aa7b80757bb24fe41126f
0;JMP
(String.new$aa7b80757bb24fe41126f)
@SP
A=M-1
M=0
(String.new$after-aa7b80757bb24fe41126f)

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@String.new$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@String.new$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(String.new$IF_TRUE1)

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

@22222//call Array.new 1
// push return-label
@return_to_Sys.error_from_Array.new_a165c0cbcacba291f797f
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
// goto Array.new
@Array.new
0;JMP
// (return-address)
(return_to_Sys.error_from_Array.new_a165c0cbcacba291f797f)

@22222//pop this 1
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

@22222//label IF_FALSE1
(String.new$IF_FALSE1)

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

@22222//pop this 0
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 2
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

@22222//push pointer 0
@THIS
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

@22222//function String.dispose 0
(String.dispose)

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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.dispose$a3c3763fb8dd57bb0de4b
D;JLE
@SP
A=M-1
M=-1
@String.dispose$after-a3c3763fb8dd57bb0de4b
0;JMP
(String.dispose$a3c3763fb8dd57bb0de4b)
@SP
A=M-1
M=0
(String.dispose$after-a3c3763fb8dd57bb0de4b)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@String.dispose$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@String.dispose$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(String.dispose$IF_TRUE0)

@22222//push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Array.dispose 1
// push return-label
@return_to_Sys.error_from_Array.dispose_a19f9d94f2741dec24702
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
// goto Array.dispose
@Array.dispose
0;JMP
// (return-address)
(return_to_Sys.error_from_Array.dispose_a19f9d94f2741dec24702)

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

@22222//label IF_FALSE0
(String.dispose$IF_FALSE0)

@22222//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//call Memory.deAlloc 1
// push return-label
@return_to_Array.dispose_from_Memory.deAlloc_a3abeaf2905ac859d4ecb
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
// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
// (return-address)
(return_to_Array.dispose_from_Memory.deAlloc_a3abeaf2905ac859d4ecb)

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

@22222//function String.length 0
(String.length)

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

@22222//push this 2
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

@22222//function String.charAt 0
(String.charAt)

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

@22222//push constant 0
@0
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
@String.charAt$a20aabeacba95c814cc18
D;JGE
@SP
A=M-1
M=-1
@String.charAt$after-a20aabeacba95c814cc18
0;JMP
(String.charAt$a20aabeacba95c814cc18)
@SP
A=M-1
M=0
(String.charAt$after-a20aabeacba95c814cc18)

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

@22222//push this 2
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

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.charAt$a95f68d9652bb4378e4d9
D;JLE
@SP
A=M-1
M=-1
@String.charAt$after-a95f68d9652bb4378e4d9
0;JMP
(String.charAt$a95f68d9652bb4378e4d9)
@SP
A=M-1
M=0
(String.charAt$after-a95f68d9652bb4378e4d9)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push this 2
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

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.charAt$ad143f1af1dc8e839b131
D;JNE
@SP
A=M-1
M=-1
@String.charAt$after-ad143f1af1dc8e839b131
0;JMP
(String.charAt$ad143f1af1dc8e839b131)
@SP
A=M-1
M=0
(String.charAt$after-ad143f1af1dc8e839b131)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@String.charAt$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@String.charAt$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(String.charAt$IF_TRUE0)

@22222//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Array.dispose_from_Sys.error_a70880b85bca250b7371e
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Array.dispose_from_Sys.error_a70880b85bca250b7371e)

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

@22222//label IF_FALSE0
(String.charAt$IF_FALSE0)

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

@22222//push this 1
@1
D=A
@THIS
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

@22222//function String.setCharAt 0
(String.setCharAt)

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

@22222//push constant 0
@0
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
@String.setCharAt$ae32389325d08ba500364
D;JGE
@SP
A=M-1
M=-1
@String.setCharAt$after-ae32389325d08ba500364
0;JMP
(String.setCharAt$ae32389325d08ba500364)
@SP
A=M-1
M=0
(String.setCharAt$after-ae32389325d08ba500364)

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

@22222//push this 2
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

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.setCharAt$af0bf6eb256412b13ff9c
D;JLE
@SP
A=M-1
M=-1
@String.setCharAt$after-af0bf6eb256412b13ff9c
0;JMP
(String.setCharAt$af0bf6eb256412b13ff9c)
@SP
A=M-1
M=0
(String.setCharAt$after-af0bf6eb256412b13ff9c)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
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

@22222//push this 2
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

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.setCharAt$a90e2f4ba4ab4756b2719
D;JNE
@SP
A=M-1
M=-1
@String.setCharAt$after-a90e2f4ba4ab4756b2719
0;JMP
(String.setCharAt$a90e2f4ba4ab4756b2719)
@SP
A=M-1
M=0
(String.setCharAt$after-a90e2f4ba4ab4756b2719)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@String.setCharAt$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@String.setCharAt$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(String.setCharAt$IF_TRUE0)

@22222//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Array.dispose_from_Sys.error_a0f377534aa1c2443e21b
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Array.dispose_from_Sys.error_a0f377534aa1c2443e21b)

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

@22222//label IF_FALSE0
(String.setCharAt$IF_FALSE0)

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

@22222//push this 1
@1
D=A
@THIS
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

@22222//push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//function String.appendChar 0
(String.appendChar)

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

@22222//push this 2
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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.appendChar$a965c0f38196894638e73
D;JNE
@SP
A=M-1
M=-1
@String.appendChar$after-a965c0f38196894638e73
0;JMP
(String.appendChar$a965c0f38196894638e73)
@SP
A=M-1
M=0
(String.appendChar$after-a965c0f38196894638e73)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@String.appendChar$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@String.appendChar$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(String.appendChar$IF_TRUE0)

@22222//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Array.dispose_from_Sys.error_a1cac714e8756af73429f
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Array.dispose_from_Sys.error_a1cac714e8756af73429f)

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

@22222//label IF_FALSE0
(String.appendChar$IF_FALSE0)

@22222//push this 2
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

@22222//push this 1
@1
D=A
@THIS
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push this 2
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

@22222//pop this 2
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

@22222//push pointer 0
@THIS
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

@22222//function String.eraseLastChar 0
(String.eraseLastChar)

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

@22222//push this 2
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.eraseLastChar$a42965ac7ae328765bfd1
D;JNE
@SP
A=M-1
M=-1
@String.eraseLastChar$after-a42965ac7ae328765bfd1
0;JMP
(String.eraseLastChar$a42965ac7ae328765bfd1)
@SP
A=M-1
M=0
(String.eraseLastChar$after-a42965ac7ae328765bfd1)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@String.eraseLastChar$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@String.eraseLastChar$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(String.eraseLastChar$IF_TRUE0)

@22222//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Array.dispose_from_Sys.error_a4db9eb71f2254d1383c8
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Array.dispose_from_Sys.error_a4db9eb71f2254d1383c8)

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

@22222//label IF_FALSE0
(String.eraseLastChar$IF_FALSE0)

@22222//push this 2
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

@22222//pop this 2
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

@22222//function String.intValue 5
(String.intValue)
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

@22222//push this 2
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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.intValue$a021a6f4a1cd32e1cca7a
D;JNE
@SP
A=M-1
M=-1
@String.intValue$after-a021a6f4a1cd32e1cca7a
0;JMP
(String.intValue$a021a6f4a1cd32e1cca7a)
@SP
A=M-1
M=0
(String.intValue$after-a021a6f4a1cd32e1cca7a)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@String.intValue$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@String.intValue$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(String.intValue$IF_TRUE0)

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

@22222//label IF_FALSE0
(String.intValue$IF_FALSE0)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 1
@1
D=A
@THIS
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

@22222//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.intValue$ac3224069aa685326e6c1
D;JNE
@SP
A=M-1
M=-1
@String.intValue$after-ac3224069aa685326e6c1
0;JMP
(String.intValue$ac3224069aa685326e6c1)
@SP
A=M-1
M=0
(String.intValue$after-ac3224069aa685326e6c1)

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@String.intValue$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@String.intValue$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(String.intValue$IF_TRUE1)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//pop local 4
@SP
A=M
A=A-1
D=M
M=0
@SP
M=M-1
@R14
M=D
@4
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

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 0
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

@22222//label IF_FALSE1
(String.intValue$IF_FALSE1)

@22222//label WHILE_EXP0
(String.intValue$WHILE_EXP0)

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

@22222//push this 2
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
@String.intValue$a800e0d2d4d58acb4f971
D;JGE
@SP
A=M-1
M=-1
@String.intValue$after-a800e0d2d4d58acb4f971
0;JMP
(String.intValue$a800e0d2d4d58acb4f971)
@SP
A=M-1
M=0
(String.intValue$after-a800e0d2d4d58acb4f971)

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

@22222//and
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D&M
M=D

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@String.intValue$WHILE_END0
D;JNE

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

@22222//push this 1
@1
D=A
@THIS
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

@22222//push constant 48
@48
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

@22222//push constant 0
@0
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
@String.intValue$a8d37fd4f288c87ffd28a
D;JGE
@SP
A=M-1
M=-1
@String.intValue$after-a8d37fd4f288c87ffd28a
0;JMP
(String.intValue$a8d37fd4f288c87ffd28a)
@SP
A=M-1
M=0
(String.intValue$after-a8d37fd4f288c87ffd28a)

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

@22222//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.intValue$ae7c8e4df48c5b09e20be
D;JLE
@SP
A=M-1
M=-1
@String.intValue$after-ae7c8e4df48c5b09e20be
0;JMP
(String.intValue$ae7c8e4df48c5b09e20be)
@SP
A=M-1
M=0
(String.intValue$after-ae7c8e4df48c5b09e20be)

@22222//or
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=D|M
M=D

@22222//not
@SP
A=M-1
M=!M

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

@22222//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
M=0
@String.intValue$IF_TRUE2
D;JNE

@22222//goto IF_FALSE2
@String.intValue$IF_FALSE2
0;JMP

@22222//label IF_TRUE2
(String.intValue$IF_TRUE2)

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

@22222//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Array.dispose_from_Math.multiply_a98fc5829f5e60d0f7789
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Array.dispose_from_Math.multiply_a98fc5829f5e60d0f7789)

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

@22222//pop local 0
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

@22222//label IF_FALSE2
(String.intValue$IF_FALSE2)

@22222//goto WHILE_EXP0
@String.intValue$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(String.intValue$WHILE_END0)

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

@22222//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
M=0
@String.intValue$IF_TRUE3
D;JNE

@22222//goto IF_FALSE3
@String.intValue$IF_FALSE3
0;JMP

@22222//label IF_TRUE3
(String.intValue$IF_TRUE3)

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

@22222//neg
@SP
A=M-1
M=-M

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

@22222//label IF_FALSE3
(String.intValue$IF_FALSE3)

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

@22222//function String.setInt 4
(String.setInt)
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

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.setInt$ab9e1e4464fc8a79bcf9b
D;JNE
@SP
A=M-1
M=-1
@String.setInt$after-ab9e1e4464fc8a79bcf9b
0;JMP
(String.setInt$ab9e1e4464fc8a79bcf9b)
@SP
A=M-1
M=0
(String.setInt$after-ab9e1e4464fc8a79bcf9b)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@String.setInt$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@String.setInt$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(String.setInt$IF_TRUE0)

@22222//push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Array.dispose_from_Sys.error_aafba416b0094f16ff9d4
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Array.dispose_from_Sys.error_aafba416b0094f16ff9d4)

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

@22222//label IF_FALSE0
(String.setInt$IF_FALSE0)

@22222//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Array.new 1
// push return-label
@return_to_Sys.error_from_Array.new_ab4d2fbda72d4e0f75f46
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
// goto Array.new
@Array.new
0;JMP
// (return-address)
(return_to_Sys.error_from_Array.new_ab4d2fbda72d4e0f75f46)

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

@22222//push constant 0
@0
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
@String.setInt$ab693eada98827307c38a
D;JGE
@SP
A=M-1
M=-1
@String.setInt$after-ab693eada98827307c38a
0;JMP
(String.setInt$ab693eada98827307c38a)
@SP
A=M-1
M=0
(String.setInt$after-ab693eada98827307c38a)

@22222//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
M=0
@String.setInt$IF_TRUE1
D;JNE

@22222//goto IF_FALSE1
@String.setInt$IF_FALSE1
0;JMP

@22222//label IF_TRUE1
(String.setInt$IF_TRUE1)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

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

@22222//neg
@SP
A=M-1
M=-M

@22222//pop argument 1
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
A=M
M=D

@22222//label IF_FALSE1
(String.setInt$IF_FALSE1)

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

@22222//label WHILE_EXP0
(String.setInt$WHILE_EXP0)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.setInt$a98d2d74480bd4428d8d2
D;JLE
@SP
A=M-1
M=-1
@String.setInt$after-a98d2d74480bd4428d8d2
0;JMP
(String.setInt$a98d2d74480bd4428d8d2)
@SP
A=M-1
M=0
(String.setInt$after-a98d2d74480bd4428d8d2)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@String.setInt$WHILE_END0
D;JNE

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

@22222//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.divide 2
// push return-label
@return_to_Array.new_from_Math.divide_a395149c46db343fda220
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
// goto Math.divide
@Math.divide
0;JMP
// (return-address)
(return_to_Array.new_from_Math.divide_a395149c46db343fda220)

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

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Math.multiply 2
// push return-label
@return_to_Math.divide_from_Math.multiply_aff1d2a4f677bbfa118e7
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
// goto Math.multiply
@Math.multiply
0;JMP
// (return-address)
(return_to_Math.divide_from_Math.multiply_aff1d2a4f677bbfa118e7)

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//pop local 0
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

@22222//pop argument 1
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
A=M
M=D

@22222//goto WHILE_EXP0
@String.setInt$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(String.setInt$WHILE_END0)

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

@22222//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
M=0
@String.setInt$IF_TRUE2
D;JNE

@22222//goto IF_FALSE2
@String.setInt$IF_FALSE2
0;JMP

@22222//label IF_TRUE2
(String.setInt$IF_TRUE2)

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

@22222//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//pop local 0
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

@22222//label IF_FALSE2
(String.setInt$IF_FALSE2)

@22222//push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@String.setInt$a7959977ebc939281ccff
D;JGE
@SP
A=M-1
M=-1
@String.setInt$after-a7959977ebc939281ccff
0;JMP
(String.setInt$a7959977ebc939281ccff)
@SP
A=M-1
M=0
(String.setInt$after-a7959977ebc939281ccff)

@22222//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
M=0
@String.setInt$IF_TRUE3
D;JNE

@22222//goto IF_FALSE3
@String.setInt$IF_FALSE3
0;JMP

@22222//label IF_TRUE3
(String.setInt$IF_TRUE3)

@22222//push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Math.multiply_from_Sys.error_ab0ab006b44fa35346981
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Math.multiply_from_Sys.error_ab0ab006b44fa35346981)

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

@22222//label IF_FALSE3
(String.setInt$IF_FALSE3)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//eq
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@String.setInt$ab7de0188b8293d05573c
D;JNE
@SP
A=M-1
M=-1
@String.setInt$after-ab7de0188b8293d05573c
0;JMP
(String.setInt$ab7de0188b8293d05573c)
@SP
A=M-1
M=0
(String.setInt$after-ab7de0188b8293d05573c)

@22222//if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
M=0
@String.setInt$IF_TRUE4
D;JNE

@22222//goto IF_FALSE4
@String.setInt$IF_FALSE4
0;JMP

@22222//label IF_TRUE4
(String.setInt$IF_TRUE4)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//push this 1
@1
D=A
@THIS
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

@22222//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//pop this 2
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

@22222//goto IF_END4
@String.setInt$IF_END4
0;JMP

@22222//label IF_FALSE4
(String.setInt$IF_FALSE4)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop this 2
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

@22222//label WHILE_EXP1
(String.setInt$WHILE_EXP1)

@22222//push this 2
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
@String.setInt$a23c994beadb6161666ad
D;JGE
@SP
A=M-1
M=-1
@String.setInt$after-a23c994beadb6161666ad
0;JMP
(String.setInt$a23c994beadb6161666ad)
@SP
A=M-1
M=0
(String.setInt$after-a23c994beadb6161666ad)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
M=0
@String.setInt$WHILE_END1
D;JNE

@22222//push this 2
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

@22222//push this 1
@1
D=A
@THIS
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

@22222//push this 2
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

@22222//push temp 0
@0
D=A
@R5
A=D+A
D=M
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

@22222//push this 2
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

@22222//pop this 2
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

@22222//goto WHILE_EXP1
@String.setInt$WHILE_EXP1
0;JMP

@22222//label WHILE_END1
(String.setInt$WHILE_END1)

@22222//label IF_END4
(String.setInt$IF_END4)

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

@22222//call Array.dispose 1
// push return-label
@return_to_Sys.error_from_Array.dispose_a223551524fafd928780f
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
// goto Array.dispose
@Array.dispose
0;JMP
// (return-address)
(return_to_Sys.error_from_Array.dispose_a223551524fafd928780f)

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

@22222//function String.newLine 0
(String.newLine)

@22222//push constant 128
@128
D=A
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

@22222//function String.backSpace 0
(String.backSpace)

@22222//push constant 129
@129
D=A
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

@22222//function String.doubleQuote 0
(String.doubleQuote)

@22222//push constant 34
@34
D=A
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

@22222//function Sys.init 0
(Sys.init)

@22222//call Memory.init 0
// push return-label
@return_to_Sys.error_from_Memory.init_a58dd9808db1385de978b
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
// goto Memory.init
@Memory.init
0;JMP
// (return-address)
(return_to_Sys.error_from_Memory.init_a58dd9808db1385de978b)

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

@22222//call Math.init 0
// push return-label
@return_to_Memory.init_from_Math.init_ab5ebe121cf00576b7d25
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
// goto Math.init
@Math.init
0;JMP
// (return-address)
(return_to_Memory.init_from_Math.init_ab5ebe121cf00576b7d25)

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

@22222//call Screen.init 0
// push return-label
@return_to_Math.init_from_Screen.init_abdd2ecee272d88844d09
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
// goto Screen.init
@Screen.init
0;JMP
// (return-address)
(return_to_Math.init_from_Screen.init_abdd2ecee272d88844d09)

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

@22222//call Output.init 0
// push return-label
@return_to_Screen.init_from_Output.init_a211080677f2ce6838217
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
// goto Output.init
@Output.init
0;JMP
// (return-address)
(return_to_Screen.init_from_Output.init_a211080677f2ce6838217)

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

@22222//call Keyboard.init 0
// push return-label
@return_to_Output.init_from_Keyboard.init_acfdb9502c241176d8803
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
// goto Keyboard.init
@Keyboard.init
0;JMP
// (return-address)
(return_to_Output.init_from_Keyboard.init_acfdb9502c241176d8803)

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

@22222//call Main.main 0
// push return-label
@return_to_Keyboard.init_from_Main.main_abc7c61599562d5ec0194
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
// goto Main.main
@Main.main
0;JMP
// (return-address)
(return_to_Keyboard.init_from_Main.main_abc7c61599562d5ec0194)

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

@22222//call Sys.halt 0
// push return-label
@return_to_Main.main_from_Sys.halt_a2d2ec6d8665edec62358
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
// goto Sys.halt
@Sys.halt
0;JMP
// (return-address)
(return_to_Main.main_from_Sys.halt_a2d2ec6d8665edec62358)

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

@22222//function Sys.halt 0
(Sys.halt)

@22222//label WHILE_EXP0
(Sys.halt$WHILE_EXP0)

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//not
@SP
A=M-1
M=!M

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Sys.halt$WHILE_END0
D;JNE

@22222//goto WHILE_EXP0
@Sys.halt$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Sys.halt$WHILE_END0)

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

@22222//function Sys.wait 1
(Sys.wait)
@SP
A=M
M=0
@SP
M=M+1

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

@22222//push constant 0
@0
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
@Sys.wait$a41b7a2de3536a2bbffb6
D;JGE
@SP
A=M-1
M=-1
@Sys.wait$after-a41b7a2de3536a2bbffb6
0;JMP
(Sys.wait$a41b7a2de3536a2bbffb6)
@SP
A=M-1
M=0
(Sys.wait$after-a41b7a2de3536a2bbffb6)

@22222//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
M=0
@Sys.wait$IF_TRUE0
D;JNE

@22222//goto IF_FALSE0
@Sys.wait$IF_FALSE0
0;JMP

@22222//label IF_TRUE0
(Sys.wait$IF_TRUE0)

@22222//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Sys.error 1
// push return-label
@return_to_Main.main_from_Sys.error_a8a9c694a5024216dc551
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
// goto Sys.error
@Sys.error
0;JMP
// (return-address)
(return_to_Main.main_from_Sys.error_a8a9c694a5024216dc551)

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

@22222//label IF_FALSE0
(Sys.wait$IF_FALSE0)

@22222//label WHILE_EXP0
(Sys.wait$WHILE_EXP0)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Sys.wait$a0c882e80c2e0ce21fc92
D;JLE
@SP
A=M-1
M=-1
@Sys.wait$after-a0c882e80c2e0ce21fc92
0;JMP
(Sys.wait$a0c882e80c2e0ce21fc92)
@SP
A=M-1
M=0
(Sys.wait$after-a0c882e80c2e0ce21fc92)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
M=0
@Sys.wait$WHILE_END0
D;JNE

@22222//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//pop local 0
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

@22222//label WHILE_EXP1
(Sys.wait$WHILE_EXP1)

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

@22222//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//gt
@SP
A=M-1
D=M
M=0
@SP
M=M-1
@SP
A=M-1
D=M-D
@Sys.wait$a7e3758fe4922d7fcac74
D;JLE
@SP
A=M-1
M=-1
@Sys.wait$after-a7e3758fe4922d7fcac74
0;JMP
(Sys.wait$a7e3758fe4922d7fcac74)
@SP
A=M-1
M=0
(Sys.wait$after-a7e3758fe4922d7fcac74)

@22222//not
@SP
A=M-1
M=!M

@22222//if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
M=0
@Sys.wait$WHILE_END1
D;JNE

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

@22222//pop local 0
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

@22222//goto WHILE_EXP1
@Sys.wait$WHILE_EXP1
0;JMP

@22222//label WHILE_END1
(Sys.wait$WHILE_END1)

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

@22222//goto WHILE_EXP0
@Sys.wait$WHILE_EXP0
0;JMP

@22222//label WHILE_END0
(Sys.wait$WHILE_END0)

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

@22222//function Sys.error 0
(Sys.error)

@22222//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.printChar 1
// push return-label
@return_to_Main.main_from_Output.printChar_a7e2be725e6e7353d2c71
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
// goto Output.printChar
@Output.printChar
0;JMP
// (return-address)
(return_to_Main.main_from_Output.printChar_a7e2be725e6e7353d2c71)

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

@22222//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.printChar 1
// push return-label
@return_to_Output.printChar_from_Output.printChar_a0423e331639aafa696cf
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
// goto Output.printChar
@Output.printChar
0;JMP
// (return-address)
(return_to_Output.printChar_from_Output.printChar_a0423e331639aafa696cf)

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

@22222//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

@22222//call Output.printChar 1
// push return-label
@return_to_Output.printChar_from_Output.printChar_ac834f17baa2910d537e5
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
// goto Output.printChar
@Output.printChar
0;JMP
// (return-address)
(return_to_Output.printChar_from_Output.printChar_ac834f17baa2910d537e5)

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

@22222//call Output.printInt 1
// push return-label
@return_to_Output.printChar_from_Output.printInt_a76fc082976ee87a3e235
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
// goto Output.printInt
@Output.printInt
0;JMP
// (return-address)
(return_to_Output.printChar_from_Output.printInt_a76fc082976ee87a3e235)

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

@22222//call Sys.halt 0
// push return-label
@return_to_Output.printInt_from_Sys.halt_a549e2c9f82c1636fb2db
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
// goto Sys.halt
@Sys.halt
0;JMP
// (return-address)
(return_to_Output.printInt_from_Sys.halt_a549e2c9f82c1636fb2db)

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