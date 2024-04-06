program Ej4b;
USES CRT;
var 
   minimo, numero, maximo: integer;
   primerNumero: boolean;
begin 
    ClrScr;

    primerNumero := true;

     Writeln('Ingrese una secuencia de números enteros positivos, (para finalizar ingrese -1): ');
     read(numero);

     while numero <> -1 do
     begin
          If numero > 0 then
             begin
              If primerNumero then
              begin
               maximo:= numero;
               minimo := numero;
               primerNumero := false;
              end
              else
                 begin
                  If numero > maximo then
                  maximo:= numero;
                  If numero < minimo then
                  minimo := numero;
                 end;    
             end;
     read(numero);
    end;
    If not primerNumero then;
    begin               
         Writeln('El numero mas grande ingresado es: ', maximo);
         Writeln('El numero mas chico ingresado es: ', minimo);
     end
end.    