TITLE 9KEY2.ASM
DOSSEG
.MODEL SMALL
.STACK 0100h
.DATA

    INSTRING db "Enter your name: $"
    ROSES db "Roses are red.$"
    VIOLETS db "Violets are blue.$"
    SUGAR db "Sugar is sweet as you are, $" ;Sugar is sweet as you are, <name>!
    X db 0Ah, ?, 0Ah DUP ("$") ; Define space for input buffer
    Z db 0Dh, 0Ah, "$"

.CODE
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09h
    MOV DX, OFFSET INSTRING
    INT 21h

    MOV AH, 0Ah ; request for string input
    MOV DX, OFFSET X
    INT 21h

    MOV AH, 09h
    MOV DX, OFFSET Z
    INT 21h

    MOV AH, 09h
    MOV DX, OFFSET ROSES
    INT 21h

    MOV AH, 09h
    MOV DX, OFFSET Z
    INT 21h

    MOV AH, 09h
    MOV DX, OFFSET VIOLETS
    INT 21h

    MOV AH, 09h
    MOV DX, OFFSET Z
    INT 21h

    MOV AH, 09h
    MOV DX, OFFSET SUGAR
    INT 21h

    MOV AH, 09h
    MOV DX, OFFSET X + 2
    INT 21h

    MOV AH, 02h
    MOV DL, '.'
    INT 21h

    MOV AX, 4C00h
    INT 21h
END