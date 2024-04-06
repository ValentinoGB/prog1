program Ej10;
Uses CRT;
var
   numero, n, valor, Origen: integer;
begin
ClrScr;
       WriteLn('Ingrese un Número Entero Positivo: ');
       Readln(numero);

       while numero <= 0 do

       begin
            Writeln('El Número Ingresado no Era Positivo. Porfavor, Ingrese Un Número Positivo');
            readln(numero);
       end;

       Origen := numero;
       n := 0;
       valor := numero;   

       while (valor mod 2 = 0) do

       begin

            valor := Valor div 2;
            n := n + 1;
       end;
       Writeln(Origen, ' = 2^', n, ' * ', valor);   
end.       

