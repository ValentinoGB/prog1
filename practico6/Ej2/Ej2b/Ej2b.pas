program Ej2b;
 Uses CRT;
 var
    oracion, palabra : string;
    letra : char;
   i, contador: integer;
 begin
 clrscr;

 contador:= 0;

 Writeln('Ingresar la letra a Saber De La Oracion: ');
 Readln(letra);
 WriteLn('Ingrese Una Oración (No Se Olvide De Poner El Punto Final): ');
 Readln(oracion);
// vuelve la oracion a minuscula
 oracion := lowercase(oracion);


 for i:= 1 to length(oracion) do
     begin
     If (oracion[i] = ' ') or (oracion[i] = '.') then
         begin
         If (palabra <> '') and (palabra[1] = letra) then
         contador := contador + 1;
         palabra:= '';
         end
     else
         begin
         palabra := palabra + oracion[i];
         If (i = length(oracion)) and (palabra[1] = letra) then
         contador := contador + 1;
         end;
     end;
 writeln('La Oración Tiene ', contador, ' Palabras Que Empiezan En ', letra)
 end.        

     // sale del progrma si no detecta un espacio
     If (pos(' ', oracion) = 0) then
     break;
     end;
 clrscr;    
 writeln('La Oración Tiene ', contador, ' Palabras Que Empiezan En ', letra)   
 end.   