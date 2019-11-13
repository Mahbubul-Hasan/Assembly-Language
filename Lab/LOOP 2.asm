.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
   MOV CX,6
   
    
   THREE:
        CMP CX, 3
        JE BREAK
          
        MOV AH, 2
        MOV DL, 3
        ADD DL, 30H
        INT 21H
        LOOP THREE 
        
   BREAK: 
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
       JMP TWO          
               
   TWO:  
       CMP CX,1
       JE ONE 
       
       MOV AH,2
       MOV DL,2
       ADD DL,30H 
       INT 21H
       LOOP TWO
   
   ONE:  
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
       
       CMP CX,0
       JE END
        
       MOV AH,2
       MOV DL,1
       ADD DL,30H
       INT 21H
       LOOP ONE
    
    
   END:
       MOV AH,4CH
       INT 21H
    
ENDP
END MAIN