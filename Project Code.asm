.MODEL SMALL
.STACK 100H

.DATA    

MSG1 DB '                .....WELCOME TO OUR QUIZ PORTAL.....$'
MSG2 DB 'Here, We are going to ask some Basic Questions. Follow the Rules: $'
MSG3 DB '1) For Every Correct answer you will get 1 point.$'
MSG4 DB '2) For Every Wrong answer 1 Point will cut from your total point.$'
MSG5 DB 'Press Enter to start the quiz : $'
MSG6 DB '--> CORRECT ANSWER.$'
MSG7 DB '--> WRONG ANSWER.$'
MSG8 DB 'Your Quiz is completed. Assessing your Score......$'
MSG9 DB '--> Total Score: $'
MSG10 DB 'Press 1 to Re-attempt quiz or 0 to Exit.$' 
MSG11 DB '                    ***Thank You Attempting Our Quiz***$'
MSG12 DB '--> Total Score: - $'
MSG13 DB '=> Result: $'
MSG14 DB '1> Correct Answers: $'
MSG15 DB '2> Incorrect Answers: $'
Q1 DB '1. Identify a Bird: $'
QA1 DB '   a) Duck   b) Dog   c) Car$'
Q2 DB '2. Which is an odd number? $'
QA2 DB '   a) 10    b) 11    c) 12$'
Q3 DB '3. A Place where you go to see lots of animals? $'
QA3 DB '   a) School   b) Hospital   c) Zoo$'
Q4 DB '4. What do Caterpillars turn into?$'
QA4 DB '   a) Frog   b) Butterflies  c) Dragon fly$'
Q5 DB '5. How many Continents are there in the world?$'
QA5 DB '   a) 7   b) 10   c) 4$'
Q6 DB '6. Who was the first man to step on the moon?$'
QA6 DB '   a) Dracula  b) John Cena  c) Neil Armstrong$'
Q7 DB '7. A Scientist who studies Rock is called:$'
QA7 DB '   a) Writer  b) Geologist  c) Dentists$'
Q8 DB '8. What do you get when you boil water?$'
QA8 DB '   a) Nothing Happens  b) Ice  c) Steam$'
Q9 DB '9. What is opposite of Happy?$'
QA9 DB '   a) Sad   b) Angry   c) Stupid$'
Q10 DB '10. 56 divided by 8 is:$'
QA10 DB '   a) 7   b) 9   c) 6$'
.CODE  

MAIN PROC 
    
    MOV AX,@DATA
	MOV DS,AX
	
	CALL NL
    
	LEA DX,MSG1
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,MSG2
	MOV AH,9
	INT 21H
    
	CALL NL
    
	LEA DX,MSG3
	MOV AH,9
	INT 21H
    
    CALL NL
    
	LEA DX,MSG4
	MOV AH,9
	INT 21H
	
	START:
	    MOV BL, 0
	    MOV CL, 0  
        
        CALL NL
        CALL NL
	    LEA DX,MSG5
	    MOV AH,9
	    INT 21H
	
	
	    MOV AH, 1
	    INT 21H
	
	    CMP AL, 0DH
	    JE QSN1
	    JNE START
	
	QSN1:
	    CALL NL
    
	    LEA DX,Q1
	    MOV AH,9
	    INT 21H
	
	    CALL NL
    
	    LEA DX,QA1
	    MOV AH,9
	    INT 21H
	
	    CALL NL
        
	    MOV AH, 1
	    INT 21H
	    CMP AL, 'a'
	    JE QSN2
        JNE QSNW2
	
	QSN2:
	    CALL NL
    
	    LEA DX,MSG6
	    MOV AH,9
	    INT 21H
	
	    INC BL
	    CALL NL
    
	    CALL QN2 
	
	    CALL INPUT
	
	    CMP AL, 'b'
	    JE QSN3
	    JNE QSNW3
	
	QSNW2:
	    CALL NL
    
	    LEA DX,MSG7
	    MOV AH,9
	    INT 21H
	
	    INC CL
	    CALL NL
    
	    CALL QN2 
	    CALL INPUT
	
	    CMP AL, 'b'
	    JE QSN3 
	    JNE QSNW3
	
	
	QSN3:
	    CALL NL
    
	    LEA DX,MSG6
	    MOV AH,9
	    INT 21H
	
	    INC BL
	    CALL NL    

    
	    CALL QN3 
	    CALL INPUT
	
	    CMP AL, 'c'
	    JE QSN4
	    JNE QSNW4
	
	QSNW3:
	    CALL NL
    
	    LEA DX,MSG7
	    MOV AH,9
	    INT 21H
	
	    INC CL
	    CALL NL
    
	    CALL QN3
	    CALL INPUT
	
	    CMP AL, 'c'
	    JE QSN4 
	    JNE QSNW4
	
	QSN4:
	    CALL NL
    
	    LEA DX,MSG6
	    MOV AH,9
	    INT 21H
	
	    INC BL
	    CALL NL
    
	    CALL QN4 
	    CALL INPUT
	
	    CMP AL, 'b'
	    JE QSN5
	    JNE QSNW5
	    
	QSNW4:
	    CALL NL
    
	    LEA DX,MSG7
	    MOV AH,9
	    INT 21H
	
	    INC CL
	    CALL NL
    
	    CALL QN4 
	    CALL INPUT
	
	    CMP AL, 'b'
	    JE QSN5 
	    JNE QSNW5
	
	QSN5:
	    CALL NL
    
	    LEA DX,MSG6
    	MOV AH,9
	    INT 21H
	
	    INC BL
	    CALL NL
    
	    CALL QN5 
	
	    CALL INPUT
	
	    CMP AL, 'a'
	    JE QSN6
	    JNE QSNW6
	
	QSNW5:
	    CALL NL
    
    	LEA DX,MSG7
	    MOV AH,9
	    INT 21H
	
	    INC CL
	    CALL NL
    
	    CALL QN5 
	    CALL INPUT
	
	    CMP AL, 'a'
	    JE QSN6 
	    JNE QSNW6
	
	QSN6:
	    CALL NL
    
	    LEA DX,MSG6
	    MOV AH,9
	    INT 21H
	
	    INC BL
	    CALL NL
    
	    CALL QN6 
	
	    CALL INPUT
	
	    CMP AL, 'c'
	    JE QSN7
	    JNE QSNW7
	    
	QSNW6:
	    CALL NL
    
	    LEA DX,MSG7
	    MOV AH,9
    	INT 21H
	
	    INC CL
    	CALL NL
    
	    CALL QN6 
	    CALL INPUT
	
	    CMP AL, 'c'
	    JE QSN7 
	    JNE QSNW7
	
	QSN7:
	    CALL NL
    
	    LEA DX,MSG6
	    MOV AH,9
	    INT 21H
	
	    INC BL
	    CALL NL
    
	    CALL QN7
	    CALL INPUT
	
	    CMP AL, 'b'
	    JE QSN8
	    JNE QSNW8
	
	QSNW7:
    	CALL NL
    
	    LEA DX,MSG7
	    MOV AH,9
	    INT 21H
	
	    INC CL
	    CALL NL
      
	    CALL QN7 
	    CALL INPUT
	
	    CMP AL, 'b'
	    JE QSN8 
	    JNE QSNW8
	
	QSN8:
	    CALL NL
     
	    LEA DX,MSG6
	    MOV AH,9
	    INT 21H
	    
	    INC BL
	    CALL NL
    
	    CALL QN8 
	    CALL INPUT
    	
    	CMP AL, 'c'
	    JE QSN9
	    JNE QSNW9
	
    	QSNW8:
	    CALL NL
    
	    LEA DX,MSG7
        MOV AH,9
    	INT 21H
	
	    INC CL
	    CALL NL
    
	    CALL QN8 
	    CALL INPUT
	
	    CMP AL, 'c'
	    JE QSN9 
	    JNE QSNW9
	
	QSN9:
	    CALL NL
    
	    LEA DX,MSG6
	    MOV AH,9
	    INT 21H
	
	    INC BL
	    CALL NL
    
	    CALL QN9 
	    CALL INPUT
	
	    CMP AL, 'a'
	    JE QSN10
	    JNE QSNW10
	
	QSNW9:
	    CALL NL
    
	    LEA DX,MSG7
	    MOV AH,9
	    INT 21H
	
	    INC CL
	    CALL NL
    
    	CALL QN9 
	    CALL INPUT
	
	    CMP AL, 'a'
	    JE QSN10 
	    JNE QSNW10
	
	QSN10:
	    CALL NL
    
	    LEA DX,MSG6
	    MOV AH,9
	    INT 21H
	
	    INC BL
	    CALL NL
    
	    CALL QN10 
	    CALL INPUT
	
	    CMP AL, 'a'
	    JE EXIT
	    JNE EXITW
	
	QSNW10:
	    CALL NL
    
	    LEA DX,MSG7
	    MOV AH,9
	    INT 21H
	
	    INC CL
    	CALL NL
    
	    CALL QN10 
	    CALL INPUT
	
    	CMP AL, 'a'
	    JE EXIT 
	    JNE EXITW
	
	EXIT:
    	CALL NL 
    
	    LEA DX,MSG6
	    MOV AH,9
	    INT 21H
	
	    INC BL 
	    
	    CALL NL
	    CALL NL
	    
        
        LEA DX,MSG8
	    MOV AH,9
	    INT 21H
	    
	    CALL NL
	    CALL NL
	    
	    LEA DX,MSG13
	    MOV AH,9
	    INT 21H
	    
	    CALL NL
	    
	    LEA DX,MSG14
	    MOV AH,9
	    INT 21H
	    
	    ADD BL, 48
	
        CMP BL,57
        
        JG TEN1

        MOV AH, 2
        MOV DL, BL
	    INT 21H
	    
 NEXT1: CALL NL 
	    
        LEA DX,MSG15
	    MOV AH,9
	    INT 21H
	    
	    ADD CL, 48
	
        CMP CL,57
        
        JG TEN1

        MOV AH, 2
        MOV DL, CL
	    INT 21H
	    
        CMP BL,CL
	    JC NEGATIVE
	    JNC POSITIVE
	
	EXITW:
	    CALL NL
    
    	LEA DX,MSG7
    	MOV AH,9
	    INT 21H
	
    	INC CL
	    CALL NL
	    CALL NL
	    
	    LEA DX,MSG8
	    MOV AH,9
	    INT 21H
	    
	    CALL NL
	    CALL NL
	    
	    LEA DX,MSG13
	    MOV AH,9
	    INT 21H
	    
	    
	    CALL NL
	    
	    LEA DX,MSG14
	    MOV AH,9
	    INT 21H
	    
	    ADD BL, 48
	
        CMP BL,57
        
        JG TEN2

        MOV AH, 2
        MOV DL, BL
	    INT 21H
	    
	    CALL NL 
	    
	    LEA DX,MSG15
	    MOV AH,9
	    INT 21H
	    
	    ADD CL, 48
	
        CMP CL,57
        
        JG TEN2

        MOV AH, 2
        MOV DL, CL
	    INT 21H
	
  NEXT2:CMP BL,CL
	    JC NEGATIVE
	    JNC POSITIVE
	    
	
	NL: 
	    MOV AH,2
	    MOV DL, 0AH
	    INT 21H   
        MOV DL, 0DH
        INT 21H
        RET 
    
    QN2:
        CALL NL
        LEA DX,Q2
	    MOV AH,9
	    INT 21H
	
	    CALL NL
    
	    LEA DX,QA2
	    MOV AH,9
	    INT 21H
	    RET 
	
	QN3:
	    CALL NL
        LEA DX,Q3
	    MOV AH,9
	    INT 21H
	
	    CALL NL
    
	    LEA DX,QA3
	    MOV AH,9
	    INT 21H
	    RET
	
	QN4:
	    CALL NL
        LEA DX,Q4
	    MOV AH,9
	    INT 21H
	
	    CALL NL
    
	    LEA DX,QA4
	    MOV AH,9
	    INT 21H
	    RET
	
	QN5:
	    CALL NL
        LEA DX,Q5
	    MOV AH,9
	    INT 21H
	    
	    CALL NL
    
	    LEA DX,QA5
	    MOV AH,9
	    INT 21H
	    RET 
	
	QN6:
	    CALL NL
        LEA DX,Q6
	    MOV AH,9
	    INT 21H
	
	    CALL NL
    
	    LEA DX,QA6
	    MOV AH,9
	    INT 21H
	    RET
	
	QN7:
	    CALL NL
        LEA DX,Q7
	    MOV AH,9
	    INT 21H
	
	    CALL NL
    
	    LEA DX,QA7
	    MOV AH,9
	    INT 21H
	    RET 
	
	QN8:
	    CALL NL
        LEA DX,Q8
	    MOV AH,9
	    INT 21H
	
	    CALL NL
    
	    LEA DX,QA8
	    MOV AH,9
	    INT 21H
	    RET  
	
	QN9:
	    CALL NL
        LEA DX,Q9
	    MOV AH,9
	    INT 21H
	
	    CALL NL
    
	    LEA DX,QA9
	    MOV AH,9
	    INT 21H
	    RET 
	
	QN10:
	    CALL NL
        LEA DX,Q10
	    MOV AH,9
	    INT 21H
	
	    CALL NL
    
	    LEA DX,QA10
	    MOV AH,9
	    INT 21H
	    RET  
	
	INPUT:
	    CALL NL
    
	    MOV AH, 1
	    INT 21H
	    RET
	
	
	EXIT1: 
	    CALL NL 
	    CALL NL
	
	    LEA DX,MSG10
	    MOV AH,9
	    INT 21H
	
	    MOV AH,1
	    INT 21H
	
	    CMP AL,'1'
	    JE START 
	
	    CALL NL
	    CALL NL
	
	    LEA DX,MSG11
	    MOV AH,9
	    INT 21H
	
	    MOV AH, 4CH
	    INT 21H
	 
	 TENEXIT:
	    MOV AH,2
	    MOV DL,"1"
    	INT 21H  
	    MOV DL,"0"
	    INT 21H
	    JMP EXIT1
	    
	 TEN1:
	    MOV AH,2
	    MOV DL,"1"
    	INT 21H  
	    MOV DL,"0"
	    INT 21H
	    JMP NEXT1
	     
	 TEN2:
	    MOV AH,2
	    MOV DL,"1"
    	INT 21H  
	    MOV DL,"0"
	    INT 21H
	    JMP NEXT2
	
	
	NEGATIVE:
	    CALL NL
	    
	    LEA DX,MSG12
	    MOV AH,9
	    INT 21H
	    SUB CL,BL
	    
	    ADD CL, 48
	
        CMP CL,57
        
        JG TENEXIT

        MOV AH, 2
        MOV DL, CL
        INT 21H
	    
	    JMP EXIT1
	
	
	POSITIVE:
	    CALL NL
	    LEA DX,MSG9
	    MOV AH,9
	    INT 21H
	    SUB BL,CL
	    
	    ADD BL, 48
	
        CMP BL,57
        
        JG TENEXIT

        MOV AH, 2
        MOV DL, BL
	    INT 21H
	    
	    JMP EXIT1
	
	MAIN ENDP
END MAIN
