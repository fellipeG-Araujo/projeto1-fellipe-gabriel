{FUP que leia dados dos alunos
desta escola (código do curso, matrícula e nota final – por exemplo de matemática. Código do curso
igual ou menor que zero, encerra a leitura) e antes de encerrar o programa, mostre a média das notas
de matemática por curso.}
Program N04FELLIPE_GABRIEL;
		//FELLIPE GABRIEL GONÇALVES DE ARAÚJO

uses BIBLIONT;
var total, so: array[1..10] of integer;
    cod, nota, x: integer;
    GRR: string [13] ;
    Med: real;
    
    begin {1}
    	repeat
    		repeat
    			leia1('Digite o código do curso', cod);
    		until(cod<10);
    		if (cod > 0) then
    			begin {2}
					  writeln('Digite a matricula');
					  	read (grr);
					  		leia1('digite a nota', nota);
					  		total[cod]:=total[cod]+1 ;
					  		so[cod]:=so[cod]+nota ;
					end; {2}
					//calcula e mostra as medias
			until (cod <= 0);	
			for x:=1 to 10 do
			 		if total[x]>0 then 
			  		begin
				  		med:=so[x]/total[x];
							writeln('O curso ', x:2, ' tem uma média de nota de ', med:8:2);
						end
					else
						writeln('O curso ', x:2,' não possui alunos');	
				TERMINE;	
		end.{1}