;To find the min element in an Array
.DATA
A:.WORD 30,20,10,40,50,60
Result:.WORD

.TEXT
MOV R5,#6
LDR R1,=A
LDR R2,[R1],#4
LOOP: LDR R4,[R1],#4
CMP R2,R4
BLS LOOP1
MOV R2,R4

LOOP1:
SUBS R5,R5,#1
CMP R5,#0
BNE LOOP
LDR R4,=Result
STR R2,[R4]
SWI 0X011