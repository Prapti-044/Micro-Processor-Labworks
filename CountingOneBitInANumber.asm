ORG     100H


    MOV CX,0008H
	MOV AL,0ADH
	
LOOPING:
    RCL     AL,1H
    JC      COUNT
L1:
    LOOP    LOOPING
    JMP     LAST
    
    
COUNT:
    INC     COUNTER
    JMP     L1
	

LAST:
    RET
  
    B DW 0003H
    COUNTER DB 1 DUP(0)
END