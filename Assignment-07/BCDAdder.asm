MOV AL,[2000]
MOV BL,[2001]
ADD AL,BL
ADD
MOV [2002],AL
JNC label
MOV [2003], 01
HLT