program Ej10;
Uses CRT;
var 
   numero, n, resultado : LongInt;

begin 
    ClrScr;
    numero:= 1;
    while numero<>0 do
    begin
         Writeln('Escribir el numero a sacar factorial (El numero 0 cierra el programa): ');
         Readln(numero);

         n := numero;
         for numero:=numero downto 2 do
            begin
                Resultado := n * (numero-1);
                n:= Resultado;
            end;
         WriteLn('El factorial de ese numero es ', n);
    End; 
end.          