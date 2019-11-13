.MODEL SMALL
.STACK 100H

.DATA

MSG DB "Multiplication $"

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, MSG
    INT 21H
    
    MOV AL, 2
    MOV BL, 4
    MUL BL
    ADD AL, 30H
    
    MOV AH, 2
    MOV DL, AL
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN