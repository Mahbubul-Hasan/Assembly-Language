.MODEL SMALL
.STACK 100H

.DATA
MSG DB "?"

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV SI, 0
    
    INPUT:
    
    MOV AH, 1
    INT 21H
    MOV MSG[SI], AL
    
    CMP AL, 0DH
    JE BREAK
    
    INC SI
    JMP INPUT
    
    BREAK:
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    JMP DISPLAY
    
    DISPLAY:
    
    MOV AH, 2
    MOV DL, MSG[SI]
    INT 21H
    
    DEC SI
    CMP SI, 0
    JS EXIT
    JGE DISPLAY
    
    EXIT:
    
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN