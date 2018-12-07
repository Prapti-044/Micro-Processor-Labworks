ORG     100H 
     
     LEA    SI,STR
     LEA    DI,ST
     MOV    CX,LEN
     ADD    SI,LEN-1
     
    
LABEL:
    MOV     AL,[SI]
    MOV     [DI],AL
    INC     DI
    DEC     SI
    
    LOOP    LABEL
    
    LEA    SI,STR
    LEA    DI,ST
    MOV    CX,LEN
    
    CLD
    REP     CMPSB
    
    JNE     NOT_EQUAL
    MOV     VAR,'Y'
    JMP     LAST
    
   

NOT_EQUAL:
     MOV    VAR,'N'

LAST:  

    RET
    STR DB ' MADAM'

    LEN EQU ($-STR)

    ST DB LEN DUP(0)
    

    S_LEN EQU LEN
    VAR DB ?

END