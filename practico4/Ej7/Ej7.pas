program Ej7;
Uses CRT;
var
    n, asteriscos, j, i :integer;
begin
     Writeln('Ingrese un valor para (n): ');
     Readln(n);

     Writeln('Ingrese ', n, ' enteros positivos menores que 60: ');
     for i:=1 to n do
     begin
          read(asteriscos);
          Writeln();
          for j:=1 to asteriscos do
          begin
               write('*');
          end;
    end;  

end.      