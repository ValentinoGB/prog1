program Ej12;
var
  a, b, c, discriminante, x1, x2, raizdiscriminante: real;

begin
  writeln('Ingrese el coeficiente a:');
  readln(a);
  writeln('Ingrese el coeficiente b:');
  readln(b);
  writeln('Ingrese el coeficiente c:');
  readln(c);

  discriminante := b*b - 4*a*c;
  raizdiscriminante := sqrt(abs(discriminante));
if discriminante > 0 then
    begin
        x1:= ((-b + raizdiscriminante)/(2+a));
        x2:= ((-b - raizdiscriminante)/(2+a));
    writeln('Dos raices reales diferentes: ', x1:0:2, ' ',x2:0:2);
    end
    else if discriminante = 0 then
      begin
      x1 := ((-b / (2*a)));
      writeln('Dos raices reales iguales: ', x1:0:2);
      end
      else If discriminante < 0 then;
      begin
          writeln('Dos raices complejas diferentes: ', -b / (2 * a):0:2, ' + ', raizdiscriminante / (2 * a):0:2, 'i y ',
      -b / (2 * a):0:2, ' - ', raizdiscriminante / (2 * a):0:2, 'i')
      end;
end.  

