program Ej12;
const
    CANT_LETRAS = 20; { valor entero mayor a 0 }
    CANT_ARTICULOS = 10; { valor entero mayor a 0 }
type
    TIdioma = (es, en, pt);
    
TFecha = record
    dia : 1..31;
    mes : 1..12;
    anio : 2001..9999 (* La wikipedia comienza en 2001 *)
end;
    TNombre = array [1..CANT_LETRAS] of char;
    
TArticulo = record
    nombre : TNombre;
    idioma : TIdioma;
    visitas : Integer;
    ultima_act : TFecha;
end;
    Wikipedia = array [1..CANT_ARTICULOS] OF TArticulo;
    
function esPosterior (f1, f2: TFecha) : boolean;
var T: boolean;
begin
    T:= false;
    If (f1.anio > f2.anio) then
        T:= true
    else if (f1.anio = f2.anio) and (f1.mes > f2.mes) then 
        T:= true
    else if(f1.anio = f2.anio) and (f1.mes = f2.mes) and (f1.dia > f2.dia) then
        T:= true
    else T:= false;
        esPosterior:= T;
end;

procedure articuloMasReciente (wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo);
var i:integer; encontrado:boolean;
begin
     encontrado:= false;
        for i:=1 to CANT_ARTICULOS do
        begin
            if (wiki[i].idioma = idioma)then
            begin
                If not encontrado or esPosterior(wiki[i].ultima_act, art.ultima_act) then
                begin
                     art:= wiki[i];
                     encontrado := true;
                end;
            end;
        end;
end;    

procedure imprimirArticulosMasRecientes (wiki: Wikipedia);
var artES,artEN, artPT: TArticulo;
begin
     articuloMasReciente(wiki, es, artES);
     articuloMasReciente(wiki, en, artEN);
     articuloMasReciente(wiki, pt, artPT);
    {*Articulo Más Reciente en Español*} 
    writeln('Artículo más reciente en Español:');
    writeln('Nombre: ', artEs.nombre);
    writeln('Visitas: ', artEs.visitas);
    writeln('Última actualización: ', artEs.ultima_act.dia, '/', artEs.ultima_act.mes, '/', artEs.ultima_act.anio);
    
    {*Articulo Más Reciente en Ingles*}
    writeln('Artículo más reciente en Inglés:');
    writeln('Nombre: ', artEn.nombre);
    writeln('Visitas: ', artEn.visitas);
    writeln('Última actualización: ', artEn.ultima_act.dia, '/', artEn.ultima_act.mes, '/', artEn.ultima_act.anio);

    {*Articulo Más Reciente en Portugues*}
    writeln('Artículo más reciente en Portugués:');
    writeln('Nombre: ', artPt.nombre);
    writeln('Visitas: ', artPt.visitas);
    writeln('Última actualización: ', artPt.ultima_act.dia, '/', artPt.ultima_act.mes, '/', artPt.ultima_act.anio);
                    
end;    
begin
end.