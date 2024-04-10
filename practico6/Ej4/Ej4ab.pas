 program Ej4ab;
 Uses CRT;
 var 
   n, i, contador, num : integer;
   raizcuadrada: real;
   esprimo: boolean;
 begin
 ClrScr;

 contador := 0;
 num := 2;
 Writeln('Ingrese un Número Entero Positivo n : ');
 readln(n);
 
 repeat
 esprimo := true;
 for i := 2 to num div 2 do
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
 num := num + 1;
 until contador = n
 end.    