; BCD to HEX 
MOV SI, 1000H
MOV DI, 1010H
MOV BL,[SI]
AND BL,0FH
MOV AL,[SI]
AND AL,0F0H
MOV CL,04
ROR AL,CL
MOV DL,0AH
MUL DL
ADD AL,BL
MOV [DI],AL
HLT
