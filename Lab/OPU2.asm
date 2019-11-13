.MODEL SMALL
.STACK 100H
.DATA

MSG DB "Addition of three numbers$"

MSG1 DB 10,10,13, "Enter the first number$"
MSG2 DB 10,10,13, "Enter the second number$" 
MSG3 DB 10,10,13, "Enter the third number$"
MSG4 DB 10,10,13, "Answer$"

NUM1 DB ?,'$'
NUM2 DB ?,'$'
NUM3 DB ?,'$'

.CODE

MAIN PROC  
    MOV AX,@DATA
    MOV DS,AX
    INT 21H
    
    MOV AH,9
    MOV DX,OFFSET MSG
    INT 21H

    MOV AH,9
    MOV DX,OFFSET MSG1
    INT 21H

    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM1,AL
    
    MOV AH,9
    MOV DX,OFFSET MSG2
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM2,AL

    MOV AH,9
    MOV DX,OFFSET MSG3
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM3,AL 
    
    MOV AH,9
    MOV DX,OFFSET MSG4
    INT 21H
    
    MOV AL,NUM1
    ADD AL,NUM2
    ADD AL,NUM3
    ADD AL,30H
    
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
ENDP
END MAIN