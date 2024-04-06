program Ej7;
Uses
    CRT;
var 
   num, i : integer;
   esprimo: boolean;
begin
     ClrScr;

     Writeln('Determina si un numero es primo o no');
     Write('Escribe un numero entero positivo: ');
     readLn(num);

     esprimo := true;
       If num <= 1 then
       esprimo := false
    else
    begin
         for i := 2 to num div 2 do
         begin
            If num mod i = 0 then
            begin
                esprimo := false;
                break;
            end;
         end;
    end;            

  WriteLn(num);   
  If esprimo then
   Writeln('Es primo')
   else
   Writeln('No es Primo');
   ReadLn();
end.        
