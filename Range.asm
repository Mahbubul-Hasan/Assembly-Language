.MODEL SMALL
.STACK 100H

.DATA

MESSAGE1 DB "Enter a number $"
MESSAGE2 DB 10, 13, "In range"
MESSAGE3 DB 10, 13, "Out of range"

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
    ADD BL, 30H
    
    CMP BL, 35H
    JL GOTO1
    JGE GREATER
    
    GOTO1:
    LEA DX, MESSAGE3
    MOV AH, 9H
    INT 21H
    
    JMP EXIT
    
    GREATER:
    CMP BL, 10
    JG GOTO1
    JLE GOTO2
    
    GOTO2:
    LEA DX, MESSAGE2
    MOV AH, 9H
    INT 21H 
    
    JMP EXIT
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN
    