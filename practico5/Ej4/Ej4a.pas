program Ej4a;
USES CRT;
var 
   suma, numero, contador: integer;
   promedio: real;
begin 
    ClrScr;

    suma := 0;
    contador := 0;

     Writeln('Ingrese una secuencia de números enteros positivos, (para finalizar ingrese -1): ');
     read(numero);

     while numero <> -1 do
     begin
          If numero > 0 then
          begin
               suma := suma + numero;
               contador := contador + 1;
          end;
     read(numero);
    end;
    If contador > 0 then;
    begin               
         promedio := suma / contador;
         Writeln('La suma de los numeros positivos ingresados son: ', suma);
         Writeln('El promedio de los numeros positivos ingresados es: ', promedio:0:2);
    end;
end.    