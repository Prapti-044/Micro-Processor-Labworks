ORG     100H

    LEA     SI,STR
    MOV     BX,SI
    LEA     DI,ST
    MOV     AX,0000H
    
        
CODE:
    CMP     AX,LEN
    JAE      FINAL
    INC     AX
    
    MOV     CX,S_LEN
    
    CLD            
    REP     CMPSB
                   
    JNE     NOT_EQUAL  
    

    MOV     VAR,'Y'

    JMP     LAST
    
NOT_EQUAL:         

    LEA     DI,ST 
    INC     BX
    MOV     SI,BX
    
    JMP     CODE        
    
FINAL:
    MOV     VAR,'N'

LAST:  

    RET
       
        STR DB 'KKUET CSEW'
        LEN EQU ($-STR)

        ST DB 'KUEC'
        S_LEN EQU ($-ST)
    
        VAR DB ?

END