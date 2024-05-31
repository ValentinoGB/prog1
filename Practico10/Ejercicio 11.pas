program Ej11;
type
    Complejo = record
    re, im : real;
    end;
procedure sumaComplejos (c1, c2 : Complejo; VAR c3 : Complejo);
begin
     c3.re := c1.re + c2.re;
     c3.im := c1.im + c2.im;
end;

procedure multComplejos (c1, c2 : Complejo; var c3 : Complejo);
begin
    c3.re := c1.re * c2.re - c1.im * c2.im;
    c3.im := c1.im * c2.re - c1.re * c2.im;
end;

var
   c1, c2, suma, producto : Complejo;
begin
writeln('Ingrese La Parte Real Del Primer Número Complejo: ');
  readln(c1.re);
  writeln('Ingrese La Parte Imaginaria Del Primer Número Complejo: ');
  readln(c1.im);
  writeln;
  
 writeln('Ingrese La Parte Real Del Segundo Número Complejo: ');
  readln(c2.re);
  writeln('Ingrese La Parte Imaginaria del Segundo Número Complejo: ');
  readln(c2.im);
  writeln;

sumaComplejos(c1, c2 , suma);
 writeln('La suma de los números complejos es:');
  writeln('Parte Real: ', suma.re:0:2);
  writeln('Parte Imaginaria: ', suma.im:0:2);
  writeln;
  
multComplejos(c1, c2, producto);
writeln('La Multiplicacion De Los Números Complejos Es: ');
  writeln('Parte Real: ', producto.re:0:2);
  writeln('Parte Imaginaria: ', producto.im:0:2);
  writeln;

end.  


