
								@R0			//If tiene sus propios contadores 
								D=M 		//inician en pos 1 y 2
								@conX 		// R1=Conx R2=ConY
								M=D
								@R1
								D=M
								@conY
								M=D

								(INICIOIF) //Inicio if

								 @conX
								 D=M             // Primer numero
								 @conY
								 D=D-M           // Segundo

								  	@PrimeroB
								  	D;JGT          // if Primer > 0 ve a PrimeroB
								  
								   		@conY  		//if segundo >
								   		D=D+1	  	//conY++ ConX++
								   		@conX 		//"Avanzo 1 pos " y regreso a la comparación
								   		D=D+1
										@INICIOIF 	//Go to INICIOIF if no changes
								   		0;JMP        

								   (PrimeroB)  //if 1ro > cambio
								   	 @conX	//lo de conY lo paso a aux
								  	 D=M 
								  	 @aux		
								   	 M=D
								   
								     @conY	//conY lo paso a  conX
								     D=M
								     @conX
								     M=D
								   
								     @aux // lo de ConX que mande a aux lo paso a conY
								     D=M
								     @conY
								     M=D 

								@INICIOIF
								0;JGT
								   