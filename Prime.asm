ORG     100H
    
    MOV     AX,9D
    MOV     BX,AX
    MOV     CX,AX
    DEC     CX
    MOV     DL,2D
    MOV     DH,00H 
    MOV     COM,BX
    
LP:
    DIV     DL
    CMP     AH,00H
    JE      NOTPRIME
    
    INC     DL
    MOV     AX,BX
    
    LOOP LP
           
L:   
 MOV     VAR,'Y' 
    JMP     LAST    
    
   
NOTPRIME:
    MOV     VAR,'N'
    
    CMP     DX,COM
    JE     L 


LAST:
    RET
    VAR     DB  ?
    COM     DW  ?

END