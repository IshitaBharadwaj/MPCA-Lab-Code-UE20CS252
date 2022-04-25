;transfer a block of 256 words stored at memory location x to memory location y.

.DATA
A:.WORD 10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,210,220,230,240
B:.WORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;Each register is having 24 words = 24*32/8=96 bytes

.TEXT
LDR R0,=A  ;Array A initialised
LDR R9,=B  ;Array B initialised
MOV R10,#0
LOOP:
LDMIA R0!,{R1-R8} ;load multiple regs increments after
STMIA R9!,{R1-R8}  ;8 registers as each word is 32 bit, 32*8=256 bits(=32 bytes) transferred.  
ADD R10,R10,#1
CMP R10,#32 
BNE LOOP
SWI 0X011