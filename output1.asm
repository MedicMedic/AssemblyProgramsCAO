TITLE OUTPUT1.ASM
DOSSEG
.MODEL SMALL
.STACK 0100h
.DATA
    A   db      "Marianne Edic$"
    B   db      "BSCS$"
    C   db      "3rd Year$"
    D   db 0Ah, 0Dh, "$"
.CODE

    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09h
    MOV DX, OFFSET A 
    INT 21h
    MOV DX, OFFSET D
    INT 21h

    MOV AH, 09h
    MOV DX, OFFSET B 
    INT 21h
    MOV DX, OFFSET D 
    INT 21h

    MOV AH, 09h
    MOV DX, OFFSET C 
    INT 21h
    MOV DX, OFFSET D 
    INT 21h

    MOV AX, 4C00h
    INT 21h

END
