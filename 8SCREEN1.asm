TITLE 8SCREEN1.ASM
DOSSEG
.MODEL SMALL
.STACK 0100h
.DATA
    SMILE db "☺$"
.CODE

    MOV AX, @DATA
    MOV DS, AX

    MOV AX, 0600h ; AH=00h (Scroll), AL=00h (Full Screen)
    MOV BH, 07h ; 0 (Black Bachground), 7 (White Text Color)
    MOV CX, 0000h ; CH=00h (Row), CL=00h (Column)
    MOV DX, 184Fh ; DH=18h (Row), DL=4Fh (Column)
    INT 10h ; call interrupt service

    MOV AH, 02h ; request to set the cursor position
    MOV BH, 00h ; page number 0
    MOV DH, 0Ch ; Row=12 in decimal
    MOV DL, 28h ; Column=40 in decimal
    INT 10h ; call interrupt service

    MOV AH, 02h
    MOV DL, 1
    INT 21h

    MOV AX, 4C00h
    INT 21h
END