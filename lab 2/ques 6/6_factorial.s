.DATA
A:.WORD 5
FACT:.WORD 0

.TEXT
LDR R1,=A
LDR R2,[R1]
LDR R4,=FACT
MOV R3,#1
L1: CMP R2,#0
BEQ L2
MUL R3,R2,R3
SUB R2,R2,#1
BNE L1
L2: STR R3,[R4]
SWI 0X011