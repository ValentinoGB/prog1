program Ej5;

const M = 5;
const N = 6; 

type
CadenaM = array [1..M] of char;
CadenaN = array [1..N] of char;

var
   cadM : CadenaM;
   cadN : CadenaN;
   Indice : Integer;

function indiceSubCadena(CorN : CadenaN; CorM : CadenaM):Integer;
var
   i , j : Integer;
   Sub: Boolean;
begin
     i := 1;
     Sub := False;
     while (i <= N - M - 1) and not Sub do
         begin
         Sub := True;
         j := 1;
         while (j <= M) do
             begin
             If CorN[i + j] <> CorM[j] then
                 begin
                 Sub := False;
                 end;
             j := j + 1;
             end;
             If not Sub then
                 i:= i + 1;
         end;
     If Sub then
     indiceSubCadena := i
     else
     indiceSubCadena := 0;
end;     

Procedure LeerCadenaM (var cadeM: CadenaM);
var i : integer;
begin
     Write('Ingrese una cadena de ', M,' Caracteres: ');
     for i:=1 to M do
     begin
         read(cadeM[i]);
     end;
end;

procedure LeerCadenaN (var cadeN: CadenaN);
var i : Integer;
begin
     Write('Ingrese una cadena de ', N, ' Caracteres: ');
     for i:=1 to N do
     begin
         read(cadeN[i])
     end;
end;

begin
     LeerCadenaM(cadM);
     LeerCadenaN(cadN);
     
     indice := indiceSubCadena(cadN, cadM);
     
     if indice > 0 then
         WriteLn('La primera cadena ocurre en la segunda cadena en la posición: ', indice)
     else
         WriteLn('La Cadena NO Se Encuentra.');
end.     
