program Ej8;
var
    c : char;
    n, j, i :integer;
begin
     Writeln('Ingrese un caracter para (c): ');
     readln(c);

     Writeln('Ingrese un valor para (n): ');
     Readln(n);

     Writeln('Triangulo formado por ', c, ' de ', n, ' lineas: ');
     for i := n downto 1 do
     begin
          for j:=1 to i do
          begin
               write(c);
          end;
          writeln();
    end;  

end.      