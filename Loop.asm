.MODEL SMALL
.STACK 100H

.CODE

MAIN PROC
    MOV CX, 5
    
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV AH, 2H
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    FOR:
    MOV AH, 2H
    MOV DL, BL
    INT 21H
    
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    DEC BL
    LOOP FOR
    
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN