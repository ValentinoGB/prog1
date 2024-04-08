program Ej2c;
Uses CRT;

var
  letraBusqueda: char;
  oracion: string;
  palabra: string;
  contadorPalabras: integer;
  i, contadorLetras: integer;

begin
clrscr;
  writeln('Ingrese una letra:');
  readln(letraBusqueda);
  
  writeln('Ingrese una oración:');
  readln(oracion);

  // Inicializar el contador de palabras
  contadorPalabras := 0;
  
  // Convertir toda la oración a minúsculas para facilitar la comparación
  oracion := LowerCase(oracion);

  // Inicializar una variable para la palabra actual
  palabra := '';

  // Recorrer la oración carácter por carácter
  for i := 1 to Length(oracion) do
  begin
    // Si es un espacio o un punto, evaluamos la palabra actual
    if (oracion[i] = ' ') or (oracion[i] = '.') then
    begin
      // Contar cuántas veces aparece la letra buscada en la palabra actual
      contadorLetras := 0;
      for i:=1 to Length(palabra) do
      begin
        if palabra[i] = letraBusqueda then
          contadorLetras := contadorLetras + 1;
      end;

      // Si la letra aparece exactamente una vez, incrementamos el contador de palabras
      if contadorLetras = 1 then
        contadorPalabras := contadorPalabras + 1;

      // Reiniciamos la variable de la palabra actual
      palabra := '';
    end
    else
    begin
      // Agregamos el carácter actual a la palabra
      palabra := palabra + oracion[i];
    end;
  end;

  // Si la última palabra también tiene la letra exactamente una vez, incrementamos el contador de palabras
  if contadorLetras = 1 then
    contadorPalabras := contadorPalabras + 1;

  // Mostrar la cantidad de palabras que contienen la letra exactamente una vez
  clrscr;
  writeln('Cantidad de palabras que contienen la letra "', letraBusqueda, '" exactamente una vez: ', contadorPalabras);
end.
