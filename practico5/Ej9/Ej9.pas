 program Ej9;
 Uses CRT;
 var
   suma, numero, promedio, sumadecuadrados, n, variacion: real;
 begin     
 ClrScr;
 n:= 0;
 sumadecuadrados:= 0;
 suma:= 0;
         writeln('Ingrese Numeros Reales Positivos (Ingrese un Numero Negativo para Finalizar el Programa): ');

         repeat
         read(numero);
         if numero >= 0 then
         begin
            suma := suma + numero;
            sumadecuadrados := sumadecuadrados + sqr(numero);
            n := n + 1;
         end;
         Until numero < 0;

         If n > 0 then
         begin
              promedio:= suma / n;
              variacion:= sqrt((sumadecuadrados/n) - sqr(promedio));
              writeln('La Variacion Estandar de los Números Ingresados es: ', variacion:0:2);
         end
         else
             WriteLn('No se Ingresaron Números');
end.                 


