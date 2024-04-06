program Ej11;
Uses CRT;
var 
   m, n, x, maximo: integer;
   function funcion(x: integer): integer; 
begin
funcion := x*x - 18*x + 5;
end;
    begin 
         ClrScr;
         Writeln('Ingrese el valor de (m): ');
         readln(m);
         WriteLn('ingrese el valor de (n): ');
         Readln(n);

         maximo := funcion(m);
         for x := m + 1 to n do
            begin 
              if funcion(x) > maximo then
              maximo := funcion(x)
            end;    
        WriteLn('El valor maximo para x en el entorno de ', m,  ' a ' , n, ' es ' , maximo);
    end.         