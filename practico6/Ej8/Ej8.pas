program Ej7;
Uses
    CRT;
var 
   m, n, i, j: integer;
   esprimo: boolean;
 begin
 ClrScr;

 Writeln('¿En Que Intervalo De Números Te Gustaria Saber Cuales Primos Hay?');
 readln(m, n);

 writeln(' Los Números Primos Entre ', m, ' Y ', n, ' Son: ');

 for i := m to n do
     begin
     esprimo := true;     
     if i <= 1 then
         begin
         esprimo := false;
         end
     else    
         begin
         for j:= 2 to trunc(sqrt(i)) do
             begin
             If i mod j = 0 then
                 begin
                 esprimo := false;
                 break;
                 end;
             end;
         end;  
     If esprimo then
     Write(i, ' ') ;
     end;
     writeln() 
end.
