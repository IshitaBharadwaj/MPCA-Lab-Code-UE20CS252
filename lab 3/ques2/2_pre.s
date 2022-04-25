;Sum of N numbers at odd pos using preindexing (without writeback)
.DATA
A:.WORD 1,2,3,4
SUM:.WORD 0

.TEXT
MOV R2,#0
LDR R1,=A
LDR R3,=SUM
MOV R5,#0
MOV R4,#1    ; COUNTER

Loop:LDR R6,[R1,R5]	;preindexing without writeback
	ADD R2,R2,R6
	ADD R5,R5,#8
	ADD R4,R4,#1
	CMP R4,#3
BNE Loop
STR R2,[R3]
SWI 0X011