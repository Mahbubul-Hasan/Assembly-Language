.MODEL SMALL
.STACK 100H

.DATA

.CODE

MAIN PROC
     
    MOV CX,6
    
    FOR:
    MOV DL, 33H

    CMP CX, 30H
    JE END
    MOV AH, 2
    INT 21H
    LOOP FOR
    
    END:
    MOV AH, 4CH
    INT 21H    
    
ENDP
END MAIN