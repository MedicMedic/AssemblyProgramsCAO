TITLE 9KEY1.ASM
DOSSEG
.MODEL SMALL
.STACK 0100h
.DATA

    INSTRING db "Enter a letter: $"
    OUTSTRING db "The next letter after $"
    IS db "is $"
    X db 0
    Z db 0Ah, 0Dh, "$"

.CODE
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09h
    MOV DX, OFFSET INSTRING
    INT 21h

    MOV AH, 01h ; request for character input
    INT 21h
    MOV X, AL

    MOV AH, 09h
    MOV DX, OFFSET Z
    INT 21h

    MOV AH, 09h
    MOV DX, OFFSET OUTSTRING
    INT 21h

    MOV AH, 02h
    MOV DL, X
    INT 21h

    MOV AH, 02H
	MOV DX, 32
	INT 21H

    MOV AH, 09h
    MOV DX, OFFSET IS
    INT 21h

    INC X

    MOV AH, 02h
    MOV DL, X
    INT 21h

    MOV AH, 02h
    MOV DL, '.'
    INT 21h

    MOV AX, 4C00h
    INT 21h
END