program Ej5;
var
   a, b, n, i :integer;
begin
     Writeln('Escribir un numero entero que sea natural (a): ');
     readln(a);
     Writeln ('Escribir un numero entero que sea natural (b): ');
     readln(b);
     Writeln('Escribir un numero enteor que sea natural (n): ');
     Readln(n);

     Writeln('Los multiplos de ', n, ' entre ', a, ' y ', b,' son: ');
     for i:= a to b do
     begin
          if i mod n= 0 then
          writeln(i,' ');
     end;
end.          