 @R0	 			         // Error Si R0 < 0    
 D=M
 @FIN    		 
 D;JLT
 @101			           // 101(X) & 102(Y) = R0
 M=D 			  
 @102
 M=D
 
 @104    		         // 104(iter) = 1
 M=1

(CICLO2) 		        // Inicio ciclo X
  @101		          //  if X == 0 -> FIN
	D=M
  @FIN        
	D;JEQ
	
  @R0               // if iter == 0 -> ACUMULADOR :  iter = 1
  D=M               
  @104 
  D=D-M
  @ACUMULADOR
  D;JEQ

  @104		          // Voy a pos que tenga iter en M = 106(X)
	A=M
	D=M    
	@106              
	M=D
	@104    	        // Voy a pos en iter +1 =107(Y)
	A=M+1
	D=M
	@107		     
	M=D
   
  @106               // If X > Y = Cambios
  D=M            
  @107
  D=D-M          
@PrimeroMasGrande
  D;JGT
  
                  // Y > X = iter + 1  || -> CICLO2
  @104           
  D=M+1
  M=D
@CICLO2
  D;JMP   
(PrimeroMasGrande) 	        // X > Y == Y < X
  @106			               // X -> aux
  D=M
  @108
  M=D
  @107 			              // Y -> X
  D=M
  @106
  M=D
  @108 			              // aux -> Y
  D=M
  @107
  M=D

  @104                    // Voy a la dir que tenga iter y lo pongo
  A=M
  M=D
  @106                  // X -> pos que tenga en iter 
  D=M
  @104
  A=M
  M=D

  @104                  // Voy a la dir que tenga iter +1 y lo pongo
  A=M+1
  M=D
  @107                  // Y -> pos que tenga iter + 1
  D=M
  @104
  A=M+1
  M=D
 
  @R0                 // iter = 1 
  D=M
  @104
  M=M+1
  D=M
  @102
  M=M-1
  D=M
  @CICLO2               // -> CICLO2
  D;JEQ //JMLE
(CICLO1)              // Inicio CICLO1
  @101                // X = X-1
  MD=M-1
  @R0
  D=M
  @102                // Y = R0
  M=D
(ACUMULADOR)
  @104               // iter = 1
  D=1
  M=D
@CICLO2             // -> CICLO2
  D;JGE
(FIN)	             //FIN
@FIN
0;JMP