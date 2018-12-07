ORG     100H

    MOV     AX,01H
    MOV     BX,05H
    
    CALL TESTS
    RET
    
    TESTS   PROC NEAR
        PUSH    AX
        PUSH    BX
        ;MOV     AX,55H
        ;MOV   0  BX,33H
        POP     AX
        POP     BX
        RET
    TESTS ENDP
    
 END