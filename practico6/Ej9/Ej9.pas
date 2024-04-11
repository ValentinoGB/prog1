program Ej9;
Uses CRT;
var 
   m, n, i, j: integer;
   esprimo: boolean;
 begin
 ClrScr;

 Writeln('¿En Que Intervalo De Números Te Gustaria Saber Cuales Primos Hay?');
 readln(m, n);

 writeln('Los Primos Gemelos Entre ', m, ' Y ', n, ' Son: ');

 for i := m to n - 2 do
     begin
     esprimo := true;     
         begin
         for j:= 2 to trunc(sqrt(i + 2)) do
             begin
             If (i mod j = 0) or ((i + 2) mod j =0) then
                 begin
                 esprimo := false;
                 break;
                 end;
             end;
         end;  
     If esprimo then
     Writeln(i, ' Y ', i + 2) ;
     end;
     writeln() 
end.