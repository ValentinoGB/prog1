Program Ej7;
Uses CRT;
var
   m, n, i, k : Integer;
 begin
 clrscr;
 
 write('Ingrese Desde Que Tabla a Que Tabla De Multiplicar Le Gustaria Saber: ');
 readln(m, n);   

 for i:= m to n do
     begin
     writeln('>>> Tabla Del ', i, ' <<<');
     for k:= 1 to 10 do
     writeln(k, ' x ', i, ' = ', k * i);
     Writeln();
     end;
 end.         