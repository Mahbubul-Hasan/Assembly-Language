.MODEL SMALL
.STACK 100H

.DATA

MESSAGE1 DB "This is 1st string $"
MESSAGE2 DB 10,13, "This is 2nd string $"

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, MESSAGE1
    MOV AH, 9H
    INT 21H
    
    LEA DX, MESSAGE2
    MOV AH, 9H
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN