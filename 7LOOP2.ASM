TITLE 7LOOP2.ASM
DOSSEG
.MODEL SMALL
.STACK 0100h
.DATA
    NUMS db          "9$"
    Z   db 0Ah, 0Dh, "$"
.CODE
    MOV CX, 9

    MOV AX, @DATA
    MOV DS, AX

    OUTERLOOP:
        PUSH CX
        CALL INNERLOOP
        POP CX
        DEC NUMS
        MOV AH, 09h
        MOV DX, OFFSET Z
        INT 21h
        LOOP OUTERLOOP

    MOV AH, 4Ch
    INT 21h

    INNERLOOP:
        MOV AH, 09h
        MOV DX, OFFSET NUMS
        INT 21h
        LOOP INNERLOOP
        RET
END
