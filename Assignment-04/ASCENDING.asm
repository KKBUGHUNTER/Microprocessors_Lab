// ASCENDING

MOV DL,[2400]
DEC DL
MOV SI, 2000	// L1
MOV CL, DL
MOV AL, [SI]	// L2
CMP AL,[SI+1]
JC LABEL	// 1018
XCHG AL,[SI+1]
XCHG AL,[SI]
INC SI
LOOP L1		// 1006
DEC DL
CMP DL,00
JNE L2  	// 100C
HLT
