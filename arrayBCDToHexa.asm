ORG     100H
    
    LEA     DI,HEXA
    MOV     CX,LEN
    LEA     SI,NUM
  
LOOPING: 
 
 CALL FUNC

 INC    SI
 INC    DI
 
LOOP LOOPING
RET  
 FUNC   PROC NEAR 
    
    MOV     DX,[SI]
    MOV     BX,DX
    AND     BX,000FH
    MOV     AX,BX
    MOV     BL,0001H
    MUL     BL
    MOV     [DI],AX
    
    MOV     BX,DX
    AND     BX,00F0H
    ROR     BX,0004H
    MOV     AX,BX
    MOV     BL,000AH
    MUL     BL
    ADD     [DI],AX
    
    ;MOV     [DI],CX
    ;PUSH    [DI]
    
    RET
    FUNC ENDP

 
LAST:  

    RET
    NUM DB 77H,25H,39H,42H,90H

    LEN EQU ($-NUM)

    HEXA DB LEN DUP(0)
    

    S_LEN EQU LEN
    
 END
