program Ej11;
var
  n, d, tempN, digito: integer;
  digitoEncontrado: boolean;

begin
  writeln('Ingrese un entero positivo n de exactamente cuatro dígitos:');
  readln(n);
  
  writeln('Ingrese un entero positivo d de exactamente un dígito:');
  readln(d);
  
  tempN := n;
  digitoEncontrado := false;
  
  digito := 1;
  
  while tempN > 0 do
  begin
    if tempN mod 10 = d then
    begin
      digitoEncontrado := true;
      writeln(tempN, ' +');
    end
    else
      writeln(tempN);
    
    tempN := tempN div 10;
    digito := digito + 1;
  end;
  
  if digitoEncontrado then
    writeln('El dígito ', d, ' aparece en ', n)
  else
    writeln('El dígito ', d, ' no aparece en ', n);
end.

