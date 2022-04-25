;Sum of N numbers at odd position using post indexing
.DATA
A:.WORD 1,2,3,4
SUM:.WORD 0

.TEXT
MOV R2,#0
LDR R1,=A
LDR R3,=SUM
MOV R5,#8
MOV R4,#1    ; COUNTER

Loop:LDR R6,[R1],R5	;post idexing
	ADD R2,R2,R6
	ADD R4,R4,#1
	CMP R4,#3
BNE Loop
STR R2,[R3]
SWI 0X011