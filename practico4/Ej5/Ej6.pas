program Ej6;
var
    n, i :integer;
begin
     Writeln('Escribir un numero enteor que sea natural (n): ');
     Readln(n);

     Writeln('Los numeros divisibles entre ', n, ' son: ');
     for i:= 1 to (n div 2) do
     begin
          if ((n mod i))= 0 then
          writeln(i,' ');
     end;
end.      