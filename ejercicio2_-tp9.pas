program ejercicio2_tp9;

type
 aTotalVentas= array [1..4,1..12] of string;

function fMes( k:integer):string;
begin
   if (k=1)then
    fMes:='enero';
   if (k=2)then
    fMes:='febrero';
   if (k=3)then
    fMes:='marzo';
   if (k=4)then
    fMes:='abril';
   if (k=5)then
    fMes:='mayo';
   if (k=6)then
    fMes:='junio';
   if (k=7)then
    fMes:='julio';
   if (k=8)then
    fMes:='agosto';
    if (k=9)then
    fMes:='septiembre';
    if (k=10)then
    fMes:='octubre';
     if (k=11)then
    fMes:='noviembre';
     if (k=12)then
    fMes:='diciembre';
   
end;
 
procedure pCargaValores(var Montos:aTotalVentas);
var 
 i,j:integer;
begin
    
  for i:=1 to 4 do
   begin
    for j:=1 to 12 do
     begin
       writeln('ingrese monto vendedor ',i,'| mes ',fMes(j),'|');
       readln(Montos[i,j]);
     end;
   end;
end;

procedure pMostrarValores(var Montos:aTotalVentas);
var
  i,j:integer;
   
begin 
    
    for i:=1 to 4 do
     begin
    for j:=1 to 12 do
     begin
       if (Montos[i,j]='') then
         writeln('El Monto Correspondiente al Vendedor ',i,'| del mes ',fMes(j),'| es: no hay informacion ')
       else
          writeln('El Monto Correspondiente al Vendedor ',i,'| del mes ',fMes(j),'| es: ',Montos[i,j]);
     end;
   end;
end;
var
  Valores:aTotalVentas;
begin
   pCargaValores(Valores);
   pMostrarValores(Valores);
   readln;

end.
