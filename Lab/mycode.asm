.MODEL SMALL
.STACK 100H

.DATA   

MESSAGE DB "Enter a char: $"
MESSAGE1 DB 10,13, "P $" 
MESSAGE2 DB 10,13, "Q $" 
MESSAGE3 DB 10,13, "R $"

CHECK DB ?, "$"

.CODE   

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    
    MOV AH, 9H
    MOV DX, OFFSET MESSAGE 
    INT 21H
    
    MOV AH,1H 
    INT 21H
    MOV CHECK, AL 
    
    CMP CHECK, 30H
    JE GOTO
    JL GOTO1
    JG GOTO2
    JMP END
    
    GOTO:
    MOV AH,9H
    MOV DX, OFFSET MESSAGE1
    INT 21H
    JMP END 
    
    GOTO1:
    MOV AH, 9H
    MOV DX, OFFSET MESSAGE2
    INT 21H
    JMP END  
    
    GOTO2:
    MOV AH, 9H
    MOV DX, OFFSET MESSAGE3
    INT 21H
    JMP END 
    
    END:
    MOV AH, 4CH
    INT 21H 
    
ENDP
END MAIN
    