; Roll the message `HELP US` in the Display.

ORG 1000H
MOV SI,1200		; START
MOV CX,000F
MOV AL,10
OUT C2,AL
MOV AL,CC
OUT C2,AL
MOV AL,90
OUT C2,AL
MOV AL,[SI]		; NEXT
OUT CO,AL
CALL DELAY
INC SI
LOOP NEXT
JMP START
MOV DI,0003 	; DELAY
MOV DX,FFFF		; B
DEC DX
JNZ B1
DEC DI
JNZ B
RET