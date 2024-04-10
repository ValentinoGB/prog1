Uses CRT;
var
k, numeroactual, cuadradoactual, siguientecuadrado: integer;
 begin 
 clrscr;

 numeroactual:= 1;
 Write('Ingrese Un Número Entero k : ');
 readln(k);
 Writeln('La Secuencia De Cuadrado Es: ');
 for numeroactual := 1 to MaxInt do
     begin
     cuadradoactual := numeroactual * numeroactual;
     write(' ', cuadradoactual);

     siguientecuadrado := (numeroactual + 1) * (numeroactual + 1);
     if siguientecuadrado - cuadradoactual > K then
     break;
     end;
end.     