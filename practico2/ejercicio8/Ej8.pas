program Ej8;
var
  num, numcuadrado, signum : integer;
begin
     Writeln('Ingresar numero');
     Readln(num);

     numcuadrado := sqr(num);

     signum := numcuadrado div 10;
    
     signum := signum mod 100;
   
     Writeln('Numero introducio = ' , num);
     Writeln('Cuadrado del numero = ', numcuadrado);
     Writeln('Siguiente numero seudoaleatorio = ', signum)
end.
