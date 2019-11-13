.MODEL SMALL
.STACK 100H

.DATA

MESSAGE1 DB "Addition $"
MESSAGE2 DB 10, 13, "Enter the 1st number $"
MESSAGE3 DB 10, 13, "Enter the 2nd number $"
MESSAGE4 DB 10, 13, "Ans is $"

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
    
    MOV AH, 1H
    INT 21H
    MOV BL, AL
    
    LEA DX, MESSAGE3
    MOV AH, 9H
    INT 21H
    
    MOV AH, 1H
    INT 21H
    MOV CL, AL
    
    LEA DX, MESSAGE4
    MOV AH, 9H
    INT 21H
    
    ADD BL, CL
    MOV AH, 2H
    
    SUB BL, 30H
    MOV DL, BL
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN