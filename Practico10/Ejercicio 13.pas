program Ej14;
const
    CANT_SALONES = 5; { valor entero mayor a 0 }
    MAX_PIZARRONES = 5; { valor entero mayor a 0 }
type
    TSalon = record
        asientos : Integer;
        pizarrones : 1..MAX_PIZARRONES;
        hayProyector : Boolean;
end;

TFacultad = array [1..CANT_SALONES] of TSalon;

procedure informeSalones (facu: TFacultad);
var i:integer;
begin
    for i:=1 to CANT_SALONES do
    begin
        writeln('Salon ', i, ':');
        writeln('  Asientos: ', facu[i].asientos);
        writeln('  Pizarrones: ', facu[i].pizarrones);
        if facu[i].hayProyector then
            Writeln(' Proyector: Si')
        else
            Writeln(' Proyector: No');
        writeln;
    end;
end;

procedure salonMasAsientos (facu: TFacultad; var indSalon: Integer; var maxAsientos: Integer);
var i:integer;
begin
    indSalon:= 1;
    maxAsientos:= Facu[1].asientos;
    for i:=2 to CANT_SALONES do
    begin
        If facu[i].asientos > maxAsientos then
        begin
            indSalon := i;
            maxAsientos := facu[i].asientos;
        end;
    end;
end;

function primerSalonSinAsientos (facu: TFacultad) : Integer;
var  i:integer; F: boolean;
begin
    F:= false;
    for i:=1 to CANT_SALONES do
    begin
        If (facu[i].asientos = 0) and (not F) then
        begin
            primerSalonSinAsientos := i;
            F:= True
        end;
    end;
end;
begin
end.
            
