.MODEL SMALL
.STACK 100H
.DATA

MSG DB "Enter your letter$" 

MSG1 DB 10,10,13, "lower to Upper"


CHAR DB ?,'$'

.CODE

MAIN PROC                                                                
    MOV AX,@DATA
    MOV DS,AX
    INT 21H
    
    MOV AH,9
    MOV DX,OFFSET MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,20H
    MOV CHAR,AL
    
    MOV AH,9
    MOV DX,OFFSET MSG1
    INT 21H

 
    
    MOV AH,4CH
    INT 21H
    
ENDP
END MAIN