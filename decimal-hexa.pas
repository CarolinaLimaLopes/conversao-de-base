Program DecimaltoHexa;
Const
      MaxCasas=8;
Type
      Hexas = array[1..MaxCasas] of String[1];
Var
      Hexa: Hexas;
      escreve : boolean;
      Valor, aux, i, cont : Integer;
 Begin
         Write('Coloque seu número decimal: ');
         ReadLn(Valor);
         aux:=valor;
         escreve:=false;
         For i:=1 to MaxCasas Do // Inicializa o vetor Hexadecimal.
                Hexa[i]:='0';
         For i:=1 to MaxCasas Do
         Begin
                 if aux mod 16 < 10 then
                       str(aux mod 16,Hexa[i])
                 else
                      case aux mod 16 of
                      10:Hexa[i]:='A';
                      11:Hexa[i]:='B';
                      12:Hexa[i]:='C';
                      13:Hexa[i]:='D';
                      14:Hexa[i]:='E';
                      15:Hexa[i]:='F';
                      End;
                      aux:=aux div 16;
                 End;
                 Write('Conversão em Hexadecimal:'); 
                 For i:=MaxCasas downto 1 Do
                 Begin
                       If Hexa[i]<>'0' then
                            escreve:=true;
                       If escreve then
                            Write(Hexa[i]);
                End; 
 End.
