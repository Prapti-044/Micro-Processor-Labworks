ORG 100H

N   EQU 04CH 
CALL DELAY

DELAY PROC NEAR
    MOV     CX,N
    LAB:
    NOP
    NOP
    NOP
    NOP 
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP 
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    
    NOP
    NOP
    NOP
    
    LOOP LAB
    RET
 DELAY   ENDP
 
 END   