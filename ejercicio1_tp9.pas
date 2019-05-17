program ejercicio1_tp9;

type
  aMesesAnios= array [1..12,2016..2018] of string;
  
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

procedure pCarga(var Monto:aMesesAnios);
var
 i,j:integer;
 begin
    for j:=2016 to 2018 do
    begin
    for i:=1 to 12 do 
    begin 
       writeln('ingrese monto mes ',fMes(i),' año ',j);
       readln(Monto[i,j]);    
    end; 
    end;
    
 end;

procedure pMostrar(var Monto:aMesesAnios );
var
i,j:integer;

begin
    
    for j:=2016 to 2018 do
    begin
    for i:=1 to 12 do 
    begin
      writeln('------------------------------------------------------');
      writeln('mes ',fMes(i),' año ',j,' El Monto es: ',Monto[i,j]);
      writeln('------------------------------------------------------');
    end;
end;
end;
var
  Resultado:aMesesAnios;
  
begin
 pCarga(Resultado);
 pMostrar(Resultado);
 readln;
end.
