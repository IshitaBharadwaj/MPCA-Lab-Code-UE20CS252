.TEXT
LDR R0,=X
LDR R1,=Y
LDR R2,[R1]
MOV R3,#0
MOV R4,#9
LOOP: ADD R5,R3,R4
 MOV R5,R5,LSR #1
 MOV R6,R5,LSL #2
 LDR R7,[R0,R6]
 CMP R7,R2
 BEQ LOOP3
 BGT LOOP2
 ADD R3,R5,#1
 B LP
LOOP2: SUB R4,R5,#1
LP: CMP R3,R4
 BLT LOOP
 BEQ LOOP

LDR R0,=B
SWI 0x002
SWI 0x011
LOOP3: LDR R0,=A
 SWI 0x002
 SWI 0x011
.DATA
X: .WORD 1,2,3,4,5,6,7,8,9,10
Y: .WORD 2
A: .ASCIZ "Successful Search"
B: .ASCIZ "Unsuccessful Search"