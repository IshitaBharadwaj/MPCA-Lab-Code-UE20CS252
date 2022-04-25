.TEXT
LDR R1,=A
LDR R2,=B
MOV R5,#17
MOV R6,#3
SUB R7,R5,R1
MOV R8,#1

LOOP1:
    LDRB R3,[R1]
    LDRB R4,[R2]
    CMP R3,R4
    MOV R9,#0
    BEQ LOOP2
    ADD R1,R1,#1
    CMP R8,R7
    BEQ END
    ADD R8,R8,#1
B LOOP1
LOOP2:
    CMP R4,#0
    BEQ FOUND
    ADD R9,R9,#1
    ADD R1,R1,#1
    ADD R2,R2,#1
    LDRB R3,[R1]
    LDRB R4,[R2]
    CMP R3,R4
    BEQ LOOP2
    SUB R1,R1,R9
    ADD R1,R1,#1
    SUB R2,R2,R9
B LOOP1
FOUND:
    LDR R0,=C
    SWI 0X02
    SWI 0X011
END:
    LDR R0,=D
    SWI 0X02
    SWI 0X011
.DATA
A: .ASCIZ "My name is James Bond"
B: .ASCIZ "Bond"
C: .ASCIZ "String present"
D: .ASCIZ "String absent" 