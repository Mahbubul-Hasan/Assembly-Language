.MODEL SMALL
.STACK 100H

.DATA
.CODE

MAIN PROC
     
     MOV BL, 10110111B
     ROL BL, 01
     MOV CL, 01
     ROL BL, CL
     
     
     MOV AH, 2
     MOV DL ,BL
     INT 21H
     
     MOV AH, 4CH
     INT 21H
     
ENDP
END MAIN