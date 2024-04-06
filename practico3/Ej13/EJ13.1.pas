program Ej13;
var
   hexadecimal: string;
  En_decimal, potencia, i, valor_caracter: integer;
  caracter: char;
begin
     Writeln('Ingresar un numero Hexadecimal de 3 digitos: ');
     Readln(hexadecimal);

     En_decimal := 0;
     potencia := length(hexadecimal)-1;

    for i := 1 to length(hexadecimal) do
     begin 
         caracter := hexadecimal[i];
      if (caracter >= '0') and (caracter <= '9') then
      valor_caracter := ord(caracter) - ord('0')
      else if (caracter >= 'A') and (caracter <= 'F') then
      valor_caracter := ord(caracter) - ord('A') + 10
      else
         begin
             writeln('Número hexadecimal inválido.');
            exit;
        end;
        En_decimal := En_decimal + valor_caracter * trunc(power(16, potencia));
        potencia := potencia-1;
    end;
    Writeln('Numero Hexadecimal ingresado:', hexadecimal);
    WriteLn('Equivalente Decimal en base 10: ', En_decimal);
end.
