org 100h

lea si,str1
lea di,str2
mov cx,len1
mov ax,0
cld 

next:
do:
   
   inc ax
   cmp [si],' '
   je LEV1
   inc si  
loop do   
   
   lev1:
       mov bx,cx
       mov cx,ax
       reverse:
      
            movsb  
            dec si
            dec si   
       loop reverse
       
       MOV CX,1
       ADD CX,AX
       ;MOV CX,AX
       
       INCSI:
           INC SI
       LOOP INCSI
       MOV CX,BX
       ;MOV BX,1
       ;SUB CX,BX
       MOV AX,0
       CMP CX,AX
       JE EXIT 
       JMP NEXT
EXIT:
    ret

str1 db 'BANGLADESH IS BEAUTIFUL'
len1 equ ($-str1)
str2 db ?




