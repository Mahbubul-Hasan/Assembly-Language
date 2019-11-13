.MODEL SMALL
.STACK 100H

.DATA

.CODE

MAIN PROC
    
    MOV AH, 1H
    INT 21H
    
    MOV BL, AL
    INT 21H
    
    MOV BH, AL
    INT 21H
    
    MOV CL, AL
    INT 21H
    
    MOV CH, AL
    INT 21H
    
    MOV DH, AL
    
    
    MOV AH, 2H
    INT 21H
    
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV DL, BL
    INT 21H
    
    MOV DL, BH
    INT 21H
    
    MOV DL, CL
    INT 21H
    
    MOV DL, CH
    INT 21H
    
    MOV DL, DH
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN
    