.MODEL SMALL
.STACK 100H

.DATA
.CODE

MAIN PROC
    
    MOV AL, 6
    MOV BL, 2
    
    DIV BL
    ADD AL, 30H
    
    MOV AH, 2
    MOV DL, AL
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN
    