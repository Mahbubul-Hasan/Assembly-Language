.MODEL SMALL
.STACK 100H

.DATA 

MESSAGE1 DB "Enter a number $"
MESSAGE2 DB 10,13, "Number is $"

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    NEW:
    LEA DX, MESSAGE1
    MOV AH, 9H
    INT 21H
    
    MOV AH, 1H
    INT 21H
    MOV BL, AL
    
    LEA DX, MESSAGE2
    MOV AH, 9H
    INT 21H
     
    MOV AH, 2H
    MOV DL, BL
    INT 21H
    
    CMP BL, 9H
    JE EXIT
    
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    JMP NEW
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN