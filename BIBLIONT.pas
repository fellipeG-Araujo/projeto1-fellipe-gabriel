{para se criar biblioteca é necessario uma UNIT com o nome dela}
UNIT BIBLIONT; //o nome da UNIT tem que ser o mesmo do arquivo que a contera
//
//==============================================================================================
//
INTERFACE //a secao da interface, informa para unit quais modulos a compoem
 function pote(a,b:integer):integer; //eleva o valor do parametro a ah b
 procedure termine; 
 PROCEDURE BHASKARA; // linha que identifica o modulo fisico da secao implementation
 PROCEDURE BHASKARA1(A,B,C:REAL); //idem
 procedure leia1(OQUE:string[30];var int:integer);
//
//ou seja, para cada modulo implementado na UNIT, a linha que identica o modulo deve vir para cah
//
//================================================================================================
//
IMPLEMENTATION // secao implementation contem os modulos fisicos
//================================================================================
{LEIA1 eH um procedimento que informa o que deve ser digitado (oque) e faz a leitura de informações do 
 teclado como caractere (max 30- - string[30]) e devolve o valor como inteiro (int) }

procedure leia1(OQUE:string[30];var int:integer);//OQUE PASSADO POR VALOR E 
                                                                                      //INT POR REFERÊNCIA, PARAMETROS FORMAIS
                                                                                         //O RESULTADO DA TAREFA, DEVOLVIDO EM INT
  var dm:string[30];       //variavel local
	  e:integer;        //variavel local
  begin
   repeat
     write(OQUE,'=>');
     readln(dm);
     val(dm,int,e); //chama o módulo VAL (da biblioteca do pascalzim (veja a apostila pascalzim.pdf))
     if(e>0)then
      writeln(oque,' ilegal');
    until (e=0);
  end;
//========================================================
PROCEDURE BHASKARA;//sem parametros
//le os coficientes de uma equação do seguno grau, clasifica e mostra as raizes 
VAR A,B,C,DELTA,X1,X2,RAIZ:REAL;  //variaveis locais
 BEGIN {1} 
 	WRITE('DIGITE O COEFICIENTE A (zero encerra)='); 
  READLN (A); //para ler informação do teclado, usar sempre READLN
  WHILE A<>0 DO 
   BEGIN {2} 
    WRITE('DIGITE O COEFICIENTE B='); 
    READLN (B); 
    WRITE('DIGITE O COEFICIENTE C='); 
    READLN(C); 
    DELTA:=B*B-4*A*C;
    IF DELTA < 0 THEN 
     WRITELN ('RAIZES IMAGINÁRIAS') 
    ELSE 
     IF DELTA = 0 THEN 
      BEGIN {3} 
       WRITE ('RAIZ ÚNICA'); 
       X1:=-B/(2*A); 
       WRITELN ('   X1 = X2 = ', X1:8:2); 
      END {3} 
     ELSE 
      BEGIN {4} 
       WRITE ('RAIZES DISTINTAS'); 
       RAIZ  := SQRT(DELTA); //SQRT => Módulo que calcula a raiz quadrada 
       X1 := (-B+RAIZ)/(2*A); 
       X2:=(-B-RAIZ)/(2*A); 
       WRITELN ('   X1=',X1:8:2,'   X2=',X2:8:2); 
      END; {4} 
 	  WRITE('DIGITE O COEFICIENTE A(zero encerra)='); 
    READLN (A); 
   END; {2} 
 END; {1} 
//===========================================================================================
 PROCEDURE BHASKARA1(A,B,C:REAL);// com 3 parametros formais 
 //recebe os coeficiente a, b,  c de uma equacao do 2 grau  classifica e mostra as raizes.
 VAR DELTA,X1,X2,RAIZ:REAL;      //variaveis locais
 	BEGIN {1} 
    DELTA:=B*B-4*A*C;
		IF DELTA < 0 THEN 
      WRITELN ('RAIZES IMAGINÁRIAS') 
    ELSE 
     IF DELTA = 0 THEN 
      BEGIN {3} 
        WRITE ('RAIZ ÚNICA'); 
        X1:=-B/(2*A); 
        WRITELN ('   X1 = X2 = ', X1:8:2); 
      END {3} 
     ELSE 
      BEGIN {4} 
       WRITE ('RAIZES DISTINTAS'); 
       RAIZ  := SQRT(DELTA); //SQRT => Módulo que calcula a raiz quadrada 
       X1 := (-B+RAIZ)/(2*A); 
       X2:=(-B-RAIZ)/(2*A); 
       WRITELN ('   X1=',X1:8:2,'   X2=',X2:8:2); 
      END; {4}           
 	END; {1} 
//
//=====================================================================
//
procedure termine;
begin
 writeln('enter para encerrar');
 readln;
end;
//
//========================================================================
//
function pote(a,b:integer):integer; //eleva o valor do parametro a ah b
var x,y:integer;
 begin
   x:=1;
  for y:=1 to b do
   x:=x*a;
  pote:=x;
 end;
	 
END.