program Ej11;
CONST base =8;

var
  Octal,decimal,d1,d2,d3:integer;

begin
     Writeln('Introduzca un numero Octal');
     Readln(Octal);
    
     d1 := Octal Div 100;
     d2 := (Octal mod 100) Div 10;
     d3 := (Octal mod 100) mod 10;
   
     decimal := d1 * sqr(base) + d2 * base + d3;

     Writeln('Numero Octal Introduccido :', Octal);
     Writeln('Numero Octal Trasformado a Decimal :', decimal)
end.
