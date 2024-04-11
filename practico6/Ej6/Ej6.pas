program Ej6;
USes CRT;
var 
   gastodepublicidadini, gastodepublicidad, ventas, beneficio, costofuncion: integer;
   beneficioneto, beneficionetopasado: integer;
 begin
 clrscr;

 ventas := 20;
 beneficio := 30;   
 costofuncion := 100;
 beneficionetopasado := -1;

 Write('Ingresa el Gasto Inicial en Publicidad: ');
 readln(gastodepublicidadini);
 gastodepublicidad := gastodepublicidadini;
 clrscr;
 writeln('|| Gasto Publicidad || Ventas || Beneficio Neto ||');
 writeln('||------------------||--------||----------------||');

 repeat

 beneficioneto := (ventas * beneficio) - (gastodepublicidadini + costofuncion);
 writeln('|        ', gastodepublicidad, '        |     ', ventas, '   |        ',beneficioneto, '      |');

 if (beneficioneto > beneficionetopasado) or (beneficionetopasado < 0) then
 beneficionetopasado := beneficioneto
 else
 break;
 gastodepublicidad := gastodepublicidad * 2;
 gastodepublicidadini := gastodepublicidadini * 2;
 ventas:= ventas * 3 div 2;
 until false;

 end.
 

 
