.MODEL SMALL
.STACK 100H

.DATA

MSG1 DB 10, 13, "Enen $"
MSG2 DB 10, 13, "Odd $"
.CODE

MAIN PROC

    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1
    INT 21H
    
    MOV BL, 2
    DIV BL
    
    
    CMP AH, 0
    JNE ODD
    
    MOV AH, 9
    LEA DX, MSG1
    INT 21H
    
    JMP EXIT
    
    ODD:
    MOV AH, 9
    LEA DX, MSG2
    INT 21H
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
ENDP
END MAIN
    