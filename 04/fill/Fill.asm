// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.
//(KEY)
	//@KBD
	//D = M 
	//@main
	//D; JNE 
	//@KEY 
	//0;JMP

//(MAIN)
	//@8191
	//D = A 
	//@counter 
	//M = D 

//(FILL)
(BEGIN)
//set i counter to end of screen memory
@8191
D=A
@i
M=D
//if (M[24576] ==0 then whiten)
@24576
D=M
@WHITEN
D;JEQ

//else (M[24576] !=0) then blacken
@BLACKEN
0;JMP

(WHITEN)
	@i 
	D=M
	@SCREEN
	A=A+D
	M=0
	//decrement i
	@i
	M=M-1
	//check if i == 0 then jmp to begin
	@i
	D=M
	@BEGIN
	D;JEQ
	//else keep whitening
	@WHITEN
	0;JMP
(BLACKEN)
	@i 
	D=M
	@SCREEN
	A=A+D
	M=-1
	//decrement i
	@i
	M=M-1
	//check if i == 0 then jmp to begin
	@i
	D=M
	@BEGIN
	D;JEQ
	//else keep whitening
	@BLACKEN
	0;JMP
