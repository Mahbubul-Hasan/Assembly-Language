.MODEL SMALL
.STACK 100H

.DATA
MESSAGE DB "Enter a string $"

.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     
     LEA DX, MESSAGE
     MOV AH, 9H
     INT 21H
     
     MOV CX, 0
         
         
     COUNT:
         MOV AH, 1H
         INT 21H
         MOV BL, AL
         CMP BL, 0DH
         JE DISPALY
         
         INC CX  
         JNE COUNT
     
     DISPALY:
        MOV AH, 2H
        MOV DX, CX
        ADD DX, 30H
        INT 21H
        MOV DL, 0AH
        INT 21H
        MOV DL, 0DH
        INT 21H
        
        MOV AH, 4CH
        INT 21H
ENDP
END MAIN