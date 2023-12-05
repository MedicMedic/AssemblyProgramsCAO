TITLE 8SCREEN2.ASM
DOSSEG
.MODEL SMALL
.STACK 0100h
.DATA
    Z     db 0Ah, 0Dh, "$"
    TEXT db 27, '[1;31mN', 27, '[1;32mE', 27, '[1;33mW', 27, '[1;34m ', 27, '[1;35mE', 27, '[1;36mR', 27, '[1;37mA', 27, '[1;31m ', 27, '[1;32mU', 27, '[1;33mN', 27, '[1;34mI', 27, '[1;35mV', 27, '[1;36mE', 27, '[1;37mR', 27, '[1;31mS', 27, '[1;32mI', 27, '[1;33mT', 27, '[1;34mY', 27, '[0m$'
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
    MOV DH, 0Bh ; Row=11 in decimal
	MOV DL, 1Ch ; Column=28 in decimal
    INT 10h ; call interrupt service

	MOV AH, 02H    ; AH=09H (Write Character and Attribute at Cursor Position)
	MOV DX, 218    ; ASCII code for the character to be displayed
	INT 21H        ; Call interrupt service

	MOV CX, 20

	L1:
		MOV AH, 02H
		MOV DL, 196
		INT 21H
		LOOP L1

    MOV AH, 02H
	MOV DL, 191
	INT 21H

	MOV AH, 09h
    MOV DX, OFFSET Z
    INT 21h

	MOV AH, 02h ; request to set the cursor position
	MOV BH, 00h ; page number 0
	MOV DH, 0Ch ; Row=12 in decimal
	MOV DL, 1Ch ; Column=28 in decimal
	INT 10h

	MOV AH, 02H
	MOV DX, 179
	INT 21H

	MOV AH, 02H
	MOV DX, 32
	INT 21H

	LEA dx, TEXT
    MOV ah, 9
    INT 21h

    MOV AH, 02H
	MOV DX, 32
	INT 21H

	MOV AH, 02H
	MOV DX, 179
	INT 21H

	MOV AH, 09h
    MOV DX, OFFSET Z
    INT 21h

	MOV AH, 02h ; request to set the cursor position
	MOV BH, 00h ; page number 0
	MOV DH, 0Dh ; Row=13 in decimal
	MOV DL, 1Ch ; Column=28 in decimal
	INT 10h

	MOV AH, 02H
	MOV DX, 192
	INT 21H

	MOV CL, 20

	L2:
		MOV AH, 02H
		MOV DL, 196
		INT 21H
		LOOP L2

	MOV AH, 02H
	MOV DX, 217
	INT 21H

    MOV AX, 4C00h
    INT 21h
END