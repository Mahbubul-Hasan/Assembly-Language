.MODEL SMALL
.STACK 100H

.DATA

MESSAGE1 DB "Enter a number $"
MESSAGE2 DB 10,13, "Greater $"
MESSAGE3 DB 10,13, "Smaller $"
MESSAGE4 DB 10,13, "Equal $"

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, MESSAGE1
    MOV AH, 9H
    INT 21H
    
    MOV AH, 1H
    INT 21H
    MOV BL, AL
    SUB BL, 30H
    
    CMP BL, 5
    JG GREATER
    JE EQUAL
    JL SMALLER
    
    GREATER:
    LEA DX, MESSAGE2
    MOV AH, 9H
    INT 21H
    
    JMP EXIT
    
    EQUAL:
    LEA DX, MESSAGE4
    MOV AH, 9H
    INT 21H
    
    JMP EXIT
    
    SMALLER:
    LEA DX, MESSAGE3
    MOV AH, 9H
    INT 21H
    
    JMP EXIT
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN