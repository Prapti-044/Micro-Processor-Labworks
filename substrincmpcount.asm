 name "sub string compare"
 
 
 org 100h   
    mov dl,00h
    lea si,str1
    lea di,str2
   
    mov ax,si
    mov bx,di
     
     
next:
    mov cx,len2
    cld 
    repe cmpsb
    
    jne  not_equal
    
    
     INC CNT
    jmp not_equal
    
not_equal:
    mov di,bx 
    inc ax
    mov si,ax
    inc dl
    cmp dl,len
    ja last
    jmp next
    
 
 
 last:
     cmp CNT,00h
     je negative
     mov res,'y'
     dec CNT
     jmp exit
 negative:
     mov res,'n'
     
 exit:
     ret
 
 str1 db 'kuetcse cse'
 len equ ($ - str1)
 str2 db 'cse'
 len2 equ ($ -str2)
 res db 00h
 CNT DB 00H
