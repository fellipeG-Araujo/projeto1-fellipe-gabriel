{FUP que leia uma rela��o de n�meros positivos, encerrada por um n�mero negativo. 
Ap�s a leitura, mostrar os n�meros pares lidos em ordem crescente e 
os n�meros �mpares lidos em ordem decrescente. (M�ximo de 100 n�meros. 
Usar um s� vetor e usar o algoritmo de ordena��o que consta da apostila DS110_APOSTILA.DOCX).  }

Program N05FELLIPE_GABRIEL ;
		//FELLIPE GABRIEL GON�ALVES DE ARA�JO
USES Bibliont; 
Var vet:array [1..100] of integer;
		aux,a,numlidos,total: integer;
		troca,cont: boolean;

Begin
	cont:=true;
	a:=1;
	while (cont=true) do
	  begin
			LEIA1 ('Digite um num inteiro positivo',vet[a]);
  			if (vet[a]>0) and (a<100)  then
					begin
					a:=a+1;
					cont:=true;
					end
			else 
  	cont:=false			
		end;
	numlidos:=a;
	if (a>1) then
	begin
		total:=a;
		Repeat
		total:=total-1;
		troca:=true;
		For a:=1 to total do
			if (vet[a]>vet[a+1]) then 
				Begin
					aux:=vet[a];
					vet[a]:=vet[a+1];
					vet[a+1]:=aux;
					troca:= false;
				End;
		Until (troca);
			writeln ('Os n�meros pares digitados em ordem crescente foram:');
			For a:=1 to numlidos do
				if ((vet[a]>0) and ((vet[a] mod 2)=0)) then
				writeln (vet[a]);
			writeln ('Os n�meros �mpares digitados em ordem decrescente foram:');
 			For a:=numlidos downto 1 do
	 			if ((vet[a]>0) and ((vet[a] mod 2)=1)) then
			writeln (vet[a]);
	end
	else                                    
	writeln ('Nenhum n�mero v�lido foi digitado');
TERMINE;
End.