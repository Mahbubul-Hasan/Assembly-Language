.MODEL SMALL
.STACK 100H


.DATA

.CODE

MAIN PROC
    
    MOV AH, 1H
    INT 21H
    MOV BL, AL 
    
    MOV AH, 2H
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 2H
    MOV DL, BL
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN

