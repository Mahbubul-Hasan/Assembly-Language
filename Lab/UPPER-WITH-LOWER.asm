.MODEL SMALL
.STACK 100H
.DATA


MSG DB "Lower to upper"
MSG1 DB 10,10,13, " Enter the letter " 
CHAR DB ?, '$' 

MSG2 DB 10,10,13,"Upper to lower"
MSG3 DB 10,10,13, " Enter the second letter " 
CHAR1 DB ?, '$' 
.CODE
 
 MAIN PROC                                                                
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    MOV DX,OFFSET MSG
    INT 21H
    
    MOV AH, 1
    INT 21H
    SUB AL, 20H
    MOV CHAR, AL 
    MOV AH, 9
    MOV DX, OFFSET MSG1
    INT 21H
  
    
   MOV AH,9
    MOV DX,OFFSET MSG2
    INT 21H
    
    MOV AH, 1
    INT 21H
    ADD AL, 20H
    MOV CHAR1, AL 
    MOV AH, 9
    MOV DX, OFFSET MSG3
    INT 21H
    
    
    
    MOV AH,4CH
    INT 21H
    
ENDP
END MAIN

