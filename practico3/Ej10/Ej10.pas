program Ej10;
CONST precio = 77;
CONST impuesto = 56;

var
   pesodelpaquete,costodelpaquete:real;

begin
     Writeln('ingresar el peso del paquete');
     readln(pesodelpaquete);

   If pesodelpaquete <=1 then
     costodelpaquete := precio
   else
     costodelpaquete := precio + (pesodelpaquete * impuesto); 
     
     Writeln('Peso introduccido :', pesodelpaquete, 'Kg');
     writeln('Costo del paquete:',  costodelpaquete)
end.


