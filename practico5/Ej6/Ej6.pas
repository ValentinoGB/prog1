program Ej6;
Uses Crt;
var 
   texto: string;
   i: integer;
   letraactual, letraanterior : char;
begin
     ClrScr;

    WriteLn('ingrese una oracion (de terminar con $): ');
    readln(texto);

    Writeln('Las consonates y vocales duplicadas son: ');

    letraanterior := #0;


    for i:=1 to length(texto) do
    begin
        letraactual := texto[i];
        If (letraactual in ['a', 'e', 'i', 'o', 'u']) or (letraactual in ['b'..'z']) then
        begin
         If letraactual = letraanterior then
         begin
           writeln(letraactual, letraactual);
         end;
        end;
       letraanterior := letraactual;
       end;
    writeln('Presione Enter para salir...');
    readln();
end.