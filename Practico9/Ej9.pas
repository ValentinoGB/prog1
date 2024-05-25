program Ej9;
const N = 4;

type
    ArregloUni = array [1..(N*(N+1)) div 2] of integer;
    MatrizN = array [1..N, 1..N] of integer;
    
var 
   Arreglo : ArregloUni;
   Matriz : MatrizN;
   i, j : integer;
   continuar : boolean;

procedure matriz2arreglo(a: MatrizN; var arreglo : ArregloUni);
var
i, j, k : integer;
begin
     k := 1 ;
    for i := 1 to N do
         for j:= 1 to N do
             begin
                 arreglo[k]:= a[i,j];
                 k:= k + 1
             end;
end;

procedure arreglo2matriz(arreglo : ArregloUni; var a: MatrizN);
var i , k , j : Integer;
begin 
k:= 1;
     For i:=1 to N do
         for j:=1 to N do
         begin
         a[i,j]:= arreglo[k];
         a[j,i]:= arreglo[k];
         k:= k + 1;
         end;
end;         

function obtSim(a:ArregloUni; i, j : integer): integer;
var obt : integer;
begin
if i > j then
     begin
         obt:= i;
         i:= j;
         j:= obt;
     end;
obt := ((i-1) * (2*N-i+2)) div 2 + (j-i+1);
obtSim := a[obt];
end;

begin
     Writeln('Ingrese Los Valores Del Triangulo Superior De La Matriz: ');
     for i:=1 to N do
         for j:=1 to N do
         begin
         Write('Elemento [', i, ',', j, ']: ');
         readln(matriz[i,j]);
         end;
         
     matriz2arreglo(Matriz,Arreglo);
     
     writeln('Ingrese las coordenadas (i, j) para obtener el valor correspondiente. Ingrese -1 para terminar.');
     continuar:= true;
         while continuar do
         begin
             write('i: '); readln(i);
             If i = -1 then
             continuar:= False
             else
                 begin
                 write('j: '); readln(j);
                 If j = -1 then
                 continuar:= false
             else
                 WriteLn('Valor en [',i,',',j,']: ', obtSim(Arreglo, i , j));
                 end;
         end;
end.         
         
         
     