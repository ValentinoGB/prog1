 program Ej3;
 Uses CRT;
 var
    coeficiente, resultado, x: real;
 begin
 clrscr;

 resultado:= 0.0;
 writeln('Ingrese el valor para X: ');
 readln(x);
 writeln(' Ingrese los coeficientes del polinomio (separados por espacios): ');
 read(coeficiente);

 while coeficiente <> -1 do
     begin
     resultado := resultado * x + coeficiente;
     read(coeficiente);
     end;
 writeln('El resultado del polinomio para x = ' , x:0:2, ' es = ', resultado:0:2)
 end.     


