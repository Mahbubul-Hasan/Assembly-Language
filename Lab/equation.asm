.MODEL SMALL
.STACK 100H
.DATA

MSG DB "Equation of three numbers$"

MSG1 DB 10,10,13, "Enter the first letter$"
MSG2 DB 10,10,13, "Enter the second letter$" 
MSG3 DB 10,10,13, "Enter the third letter$"
MSG4 DB 10,10,13, "Answer$"

CHAR1 DB ?,'$'
CHAR2 DB ?,'$'
CHAR3 DB ?,'$'

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
    MOV CHAR1,AL
    
    MOV AH,9
    MOV DX,OFFSET MSG2
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV CHAR2,AL

    MOV AH,9
    MOV DX,OFFSET MSG3
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV CHAR3,AL 
    
    MOV AH,9
    MOV DX,OFFSET MSG4
    INT 21H
    
    MOV AL,CHAR1
    ADD AL,CHAR2
    SUB AL,CHAR3
    ADD AL,30H
    
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
ENDP
END MAIN