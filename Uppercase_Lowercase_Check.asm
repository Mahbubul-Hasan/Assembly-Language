.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 10, 13, "Uppercase $"
MSG2 DB 10, 13, "Lowercase $" 
MSG3 DB 10, 13, "Not a letter $"
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    CMP BL, 41H
    JL  NOTfOUND
    
    CMP BL, 5AH
    JG LOWER
    
    MOV AH, 9
    LEA DX, MSG1
    INT 21H
    JMP EXIT
    
    LOWER:
    
    CMP BL, 61H
    JL NOTfOUND
    
    CMP BL, 7AH
    JG NOTfOUND 
    
    MOV AH, 9
    LEA DX, MSG2
    INT 21H
    JMP EXIT
    
    NOTfOUND:
    
    MOV AH, 9
    LEA DX, MSG3
    INT 21H
    JMP EXIT
    
    EXIT:
    
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN