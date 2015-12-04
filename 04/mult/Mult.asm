// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R2 
M = 0 


(WHILE)
@R0 //takes value at r0 and puts the value of r0 in d 
D = M 
@DONE 
D;JEQ //if the value of d is equal to zero then you jump to done 

@R1 
D = M 
@R2 
M = M+D //taking the value in r2 and adding it to d 
@R0
M = M -1 
@WHILE
0;JMP 
 
///this is where you add the code for the addition loop 
(DONE)
@DONE 
0;JMP 
