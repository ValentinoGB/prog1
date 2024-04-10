program Ej5a;
Uses CRT;
var
k, numeroactual, cuadradoactual, siguientecuadrado: integer;
 begin 
 clrscr;

 numeroactual:= 1;
 Write('Ingrese Un Número Entero k : ');
 readln(k);
 Writeln('La Secuencia De Cuadrado Es: ');
 repeat
 cuadradoactual := numeroactual * numeroactual;
 writeln(cuadradoactual);

 siguientecuadrado := (numeroactual + 1) * (numeroactual + 1);
 if siguientecuadrado - cuadradoactual > K then
 break;

 numero_actual := numeroactual + 1;
 until false;
end.
