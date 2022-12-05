uses BIBLIONT;
var total, so: array[1..10] of integer;
    cod, nota, x: integer;
    GRR: string [13] ;
    Med: real;
    
    begin {1}
    	repeat
    		leia1('Digite o código', cod);
    		if (cod > 0) then
    			begin {2}
					  writeln('Digite a matricula');
					  	read (grr);
					  		leia1('digite a nota', nota);
					  		total[cod]:=total[cod]+1 ;
					  		so[cod]:=so[cod]+nota ;
					end; {2}
					//calcula e mostra as medias
			until (cod < 0);	
			for x:=1 to 10 do
			 		if total[x]>0 then 
			  		begin
				  		med:=so[x]/total[x];
							writeln('Curso ', x:2, 'media = ', med:8:2);
						end
					else
						writeln('Curso ', x:2,'não possui alunos');	
				TERMINE;	
		end.{1}