program Ej4;
type
    TipoMatriz = array[1..10, 1..10] of integer;
    
Procedure CargarMatriz(var matriz: TipoMatriz);
var i, j : integer;
begin
     for i:=1 to 10 do
         for j:=1 to 10 do
         begin
             Writeln('Ingrese el valor de la posicion [', i, ',', j, ']: ');
             Readln(matriz[i, j]);
         end;
end;

procedure IntercambiasFilas(var matriz: TipoMatriz; m,n : Integer);
var Fil, j : Integer;
begin
     for j:=1 to 10 do
     begin
         Fil:= matriz[m,j];
         matriz[m,j]:= matriz[n,j];
         matriz[n,j]:= Fil
     end;
end;     

var
   matriz: TipoMatriz;
   m, n, i , j: integer;
begin
     CargarMatriz(matriz);
     Write('Ingrese el número de la primera fila a intercambiar (1-10): ');
     Readln(m);
     Write('Ingrese el número de la segunda fila a intercambiar (1-10): ');
     Readln(n);
     
     If (m < 1) or (m > 10) or (n < 1) or (n > 10) then
         Writeln('Error: Los números de fila deben estar entre 1 y 10')
     else
         begin
             IntercambiasFilas(matriz, m, n);
             WriteLn('La matriz después de intercambiar las filas ', m, ' y ', n, ' es:');
             for i:=1 to 10 do
                begin
                     for j:=1 to 10 do
                         begin
                         write(matriz[i,j]:5);
                         end;
                writeln;
                end;
          end;
end.          
                 
         