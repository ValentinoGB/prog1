program Ej11;
Uses CRT;
var  
   n, b, k, resultado: integer;
begin
ClrScr;
       WriteLn('Ingresa el valor de n: ');
       Readln(n);
       Writeln('Ingresa el valor de b: ');
       Readln(b);

       k := 0;
       resultado := 1;   

       while resultado <= n do
       begin  
            resultado := resultado * b;
            k := k + 1;
       end;

       k := k - 1;

       WriteLn('La Parte Entera del Logaritmo de ', n, ' En Base ', b, ' es: ', k);
end.            
