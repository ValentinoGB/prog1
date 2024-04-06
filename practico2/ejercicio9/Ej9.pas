program Ej9;
var
  num,suma : real;
begin
     Writeln('Ingrese un numero real en el intervalo de [0.0,1.0]');
     Readln(num);

     suma := 1 + num + sqr(num)/2 + sqr(num)*num/(2*3) + sqr(sqr(num)/(2*3*4));

     Writeln('Numero introducido : ', num);
     Writeln('Suma de la serie de numeros :', suma);
     Writeln('Exp(x) :', exp(num))
end.
