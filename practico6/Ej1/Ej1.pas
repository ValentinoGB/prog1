 program Ej1;
 Uses CRT;
 var
   m, n, MCD, res : integer;
 begin
 clrscr;

 MCD:= 0;
 res:= 1;
 Writeln('Ingrese un Número Entero Positivo (m) y (n): ');
 Read(m,n);  

 while res <> 0 do
     begin
     res:= m mod n;
     m:= n;
     n:= res;
     end;

 MCD:= m;

 Writeln('El MCD Es : ', MCD);
 end.


