program Ej7;
var
    n, numero, mayor, menor, i :integer;
begin
     Writeln('Ingresa la cantidad de numeros a evaluar: ');
     Readln(n);

     Writeln('Ingrese el Numero 1: ');
     Readln(numero);
     mayor:= numero;
     menor:= numero;
    
    for i:=2 to n do
    begin
         Writeln('Ingrese el numero ', i, ' :');
         read(numero);

         if numero > mayor then
         mayor := numero
        else if numero < menor then
         menor:= numero;
    end;
    Writeln('El numero mayor ingresado es: ', mayor);
    Writeln('El numero menor ingresado es: ', menor);
end.         

end.      