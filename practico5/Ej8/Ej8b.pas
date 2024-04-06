program Ej8b;
uses CRT;
var
   entrada: string;
   operador: char;
   numero, resultado, i : integer;
begin
clrScr;

      resultado := 0;
      numero := 0;
      operador := '+';

      readln(entrada);
      for i := 1 to length(entrada) do         
      begin
           If (entrada[i] >= '0') and (entrada[i] <= '9') then
           numero := numero * 10 + ord(entrada[i]) - ord('0')
           else if entrada[i] in ['+', '-',  '*',  '/'] then 
           begin
                 case operador of
                 '+' : resultado := resultado + numero;
                 '-' : resultado := resultado - numero;
                 '*' : resultado := resultado * numero;
                 '/' : resultado := resultado Div numero;
            end;    
            numero := 0;
            operador := entrada[i];
       end 
    else if entrada[i] = '=' then
    begin 
         case operador of
                 '+' : resultado := resultado + numero;
                 '-' : resultado := resultado - numero;
                 '*' : resultado := resultado * numero;
                 '/' : resultado := resultado Div numero;
    end;
    writeln(resultado);
    break;
   end
   else if entrada[i] = ' ' then
   begin
   end; 
end;
end.  