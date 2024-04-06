program Ej10;
var
  num,raiz : real;

begin
    
    writeln('Ingresar numero real positivo');
    Readln(num);

    (*tiene que ver con la solucion del ejercicio 11 del practico 1, eso dice la letra xd*)
    raiz := exp(0.5*ln(num));

    Writeln('Numero introducido :', num);
    Writeln('Raiz cuadrada del numero real introducido : ',raiz)
end.
