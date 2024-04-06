program Ej12;
Uses CRT;
var 
    n, x, y, maximo, resultado: integer;
   function funcion(x, y: integer): integer; 
begin
funcion := x*x - 9*x*y + y*y;
end;
    begin 
         ClrScr;
         WriteLn('ingrese el valor de (n): ');
         Readln(n);

         maximo := funcion(-n, n);
         for x := -n to n do
            begin 
               for y := -n to n do
               begin
                    resultado := funcion(x, y);   
                    if Resultado > maximo then          
                    maximo := resultado;
                end;    
            end;
        writeln('El máximo valor de f(x, y) en el entorno de -', n, ' a ', n, ' es: ', maximo);
    end.         