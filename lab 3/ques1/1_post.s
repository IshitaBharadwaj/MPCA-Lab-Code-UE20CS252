;Sum of N numbers using post indexing
.DATA
A:.WORD 1,2,3,4
SUM:.WORD 0

.TEXT
MOV R2,#0
LDR R1,=A
LDR R3,=SUM
MOV R5,#4
MOV R4,#1    ; COUNTER

Loop:LDR R6,[R1],R5	;post idexing ([R1],#4)
	ADD R2,R2,R6
	ADD R4,R4,#1
	CMP R4,#5
BNE Loop
STR R2,[R3]
SWI 0X011