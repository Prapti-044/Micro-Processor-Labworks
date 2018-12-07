ORG     100H
      
      MOV   AX,27H
      PUSH  AX
      
      CALL  TESTS
      POP   AX
      RET
    
TESTS  PROC NEAR
    PUSHF
    MOV BL,09H
    MOV BH,05H
    
    MOV BP,SP
    MOV AX,[BP+4]
    
    MUL BL
    DIV BH
    ADD AX,20H
    MOV [BP+4],AX
    POPF
    TESTS ENDP
 
 RET   
 END