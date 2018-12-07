ORG     100H

    LEA     SI,NUM
    LEA     DI,CREDIT
    MOV     CX,LEN
    MOV     BX,0000H
    

CreditHour:
	CALL    CGPA
	INC     SI
	INC     DI
	LOOP    CreditHour
    
    MOV     AX,BX
    CALL    TotalCredit
    
    DIV     BL
    JMP LAST

CGPA    PROC    NEAR
    
 	MOV AL,[SI]
	MOV DL,[DI]
	
	CMP AL,80H
 	JAE AP

	CMP AL,75H
 	JAE A

	CMP AL,70H
 	JAE AM

	CMP AL,65H
 	JAE BM

	CMP AL,60H
 	JAE B

AP:
	MOV AL,05H
	MUL DL
	JMP DONE


A:
	MOV AL,04H
	MOV AH,'B'
	JMP DONE

AM:
	MOV AL,03H
	MUL DL
	JMP DONE

BM:
	MOV AL,02H
	MUL DL
	JMP DONE

B:
	MOV AL,01H
	MUL DL
	JMP DONE

DONE:
    ADD BX,AX	
	RET
CGPA ENDP
    
    
TotalCredit     PROC    NEAR
    LEA     SI,CREDIT
    MOV     CX,LEN
    MOV     BX,0000H
    
    LOP:
        ADD  BL,[SI]
        INC  SI
        LOOP LOP
   RET
TotalCredit ENDP                                                                                                                                                                                                                                                                         
    

LAST:  
    RET
    NUM     DB  86H,70H,87H
    LEN     DW ($-NUM)
    CREDIT  DB  3H,3H,3H
    
END
