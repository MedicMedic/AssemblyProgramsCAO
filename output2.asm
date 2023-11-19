TITLE OUTPUT1.ASM
DOSSEG
.MODEL SMALL
.STACK 0100h
.DATA
    A   db      "COMPUTER$"
    B   db      "ORGANIZATION$"
    D   db 0Ah, 0Dh, "$"
.CODE

    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09h
    MOV DX, OFFSET A 
    INT 21h
    MOV DX, OFFSET D
    INT 21h

    MOV AH, 02H
	MOV DL, 'A'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H

    MOV AH, 02H
	MOV DL, 'R'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H

    MOV AH, 02H
	MOV DL, 'C'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H

    MOV AH, 02H
	MOV DL, 'H'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H

    MOV AH, 02H
	MOV DL, 'I'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H

    MOV AH, 02H
	MOV DL, 'T'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H

    MOV AH, 02H
	MOV DL, 'E'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H

    MOV AH, 02H
	MOV DL, 'C'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H

    MOV AH, 02H
	MOV DL, 'T'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H

    MOV AH, 02H
	MOV DL, 'U'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H

    MOV AH, 02H
	MOV DL, 'R'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H

    MOV AH, 02H
	MOV DL, 'E'
	INT 21H

    MOV AH, 09H
	MOV DX, OFFSET D
	INT 21H
    MOV AH, 09h
    MOV DX, OFFSET B 
    INT 21h

    MOV AX, 4C00h
    INT 21h

END
