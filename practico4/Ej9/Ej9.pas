program Ej9;
Uses CRT;
var 
   x, n, resultado : real;
begin
     ClrScr;
     Writeln('Escribir valor a sacar potencia (x): ');
     Readln(x);
     WriteLn('Escribir valor de la potencia (n): ');
     Readln(n);

     Resultado := exp((n*ln(x)));

     WriteLn('El resultado de ', x:20:2, ' elevado a ', n:20:2, ' es de ', Resultado:20:2)
end.