program Ej4c;
 Uses CRT;
 var 
   n, i, contador, num : integer;
   raizcuadrada: real;
   esprimo: boolean;
 begin
 ClrScr;

 contador := 0;

 Writeln('Ingrese un Número Entero Positivo n : ');
 readln(n);
 for num := 2 to MaxInt do
     begin
     esprimo := true;
     for i := 2 to trunc(sqrt(num)) do
         begin
         If num mod i = 0 then
             begin
             esprimo := false;
             break;
             end;
         end;
     
     If esprimo then
         begin
         raizcuadrada:= sqrt(num);
         WriteLn('Raix Cuadrada De ', num, ' Es ', raizcuadrada:0:2);
         contador := contador + 1;
         end;
     If contador = n then
     break;
     end;
 end.    