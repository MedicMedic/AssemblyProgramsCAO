TITLE 7LOOP.ASM
DOSSEG
.MODEL SMALL
.STACK 0100h
.DATA
    ABC db           "A$"
    Z   db 0Ah, 0Dh, "$"
    FINMESS db       "Program Ends Here!$"
.CODE

    MOV AX, @DATA
    MOV DS, AX

    MOV CX, 26
    MOV BX, 0

    ABCLOOP:
        MOV AH, 09h
        MOV DX, OFFSET ABC 
        INT 21h
        INC ABC
        MOV DX, OFFSET Z
        INT 21h

        LOOP ABCLOOP

        MOV AH, 09H
	    MOV DX, OFFSET FINMESS
	    INT 21H  

        MOV AH, 4Ch
        INT 21h
    
END
