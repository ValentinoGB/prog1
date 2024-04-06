program Ej13;

uses
  math;

var
  hexadecimal: string;
  en_decimal, potencia, i: integer;
  caracter: char;

begin
 
  writeln('Ingrese un número hexadecimal de tres dígitos:');
  readln(hexadecimal);

  en_decimal := 0;
  potencia := length(hexadecimal) - 1; 

  for i := 1 to length(hexadecimal) do
  begin
    caracter := hexadecimal[i];

    case caracter of
      '0'..'9': en_decimal := en_decimal + (ord(caracter) - ord('0')) * trunc(power(16, potencia));
      'A'..'F': en_decimal := en_decimal + (ord(caracter) - ord('A') + 10) * trunc(power(16, potencia));
    else
      begin
        writeln('Número hexadecimal inválido.');
        exit;
      end;
    end;

    potencia := potencia - 1;
  end;

  writeln('Número hexadecimal ingresado: ', hexadecimal);
  writeln('Equivalente en base 10: ', en_decimal);
end.

