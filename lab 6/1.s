.DATA
A:.WORD 0x11111111 
SUM:.WORD 0

.TEXT
LDR R0,=A
LDR R1,[R0]
LDR R2,=SUM
LDR R3,[R2]
MOV R7,#0  ;COUNTER
LOOP:
    AND R4,R1,#1
    ADD R3,R3,R4
    MOV R1,R1,LSR #1
    ADD R7,R7,#1
    CMP R7,#32
BNE LOOP
STR R3,[R2]
SWI 0X011