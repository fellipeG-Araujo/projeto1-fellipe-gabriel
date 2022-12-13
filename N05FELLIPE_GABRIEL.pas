{FUP que leia uma relação de números positivos, encerrada por um número negativo. 
Após a leitura, mostrar os números pares lidos em ordem crescente e 
os números ímpares lidos em ordem decrescente. (Máximo de 100 números. 
Usar um só vetor e usar o algoritmo de ordenação que consta da apostila DS110_APOSTILA.DOCX).  }

Program N05FELLIPE_GABRIEL ;
		//FELLIPE GABRIEL GONÇALVES DE ARAÚJO
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
			writeln ('Os números pares digitados em ordem crescente foram:');
			For a:=1 to numlidos do
				if ((vet[a]>0) and ((vet[a] mod 2)=0)) then
				writeln (vet[a]);
			writeln ('Os números ímpares digitados em ordem decrescente foram:');
 			For a:=numlidos downto 1 do
	 			if ((vet[a]>0) and ((vet[a] mod 2)=1)) then
			writeln (vet[a]);
	end
	else                                    
	writeln ('Nenhum número válido foi digitado');
TERMINE;
End.