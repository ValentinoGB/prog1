 program Ej2a;
 Uses CRT;
 var
    oracion, palabra : string;
    letra : char;
    n, contador: integer;
 begin
 clrscr;

 contador:= 0;

 Writeln('Ingresar la letra a Saber De La Oracion: ');
 Readln(letra);
 WriteLn('Ingrese Una Oración (No Se Olvide De Poner El Punto Final): ');
 Readln(oracion);

//Recorre toda la oración palabra por palabra
 while (length(oracion) > 0) do
     begin

     //Obtiene la siguiente palabra
     palabra := copy(oracion, 1, pos(' ', oracion)-1);
     delete(oracion, 1, pos(' ', oracion));

     //Verificara si la palabra termina en la letra buscada
     If (palabra[length(palabra)] = letra) then
     contador := contador + 1;
     // sale del progrma si no detecta un espacio
     If (pos(' ', oracion) = 0) then
     break;
     end;
 clrscr;    
 writeln('La Oración Tiene ', contador, ' Palabras Que Terminan En ', letra)   
 end.   



