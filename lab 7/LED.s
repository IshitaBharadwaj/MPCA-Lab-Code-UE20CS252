.TEXT
MOV R0,#0
LOOP: SWI 0X201     ;to light up LED, r0=1 means right led light up
                    ;r0=2 means left LED and r0=3 means both LED light up
    ADD R0,R0,#1
    MOV R4,#64000
    delay: 
        SUB R4,R4,#1
        CMP R4,#0
        BNE delay
CMP R0,#3
BLE LOOP
.END