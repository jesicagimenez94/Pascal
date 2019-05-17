program ejercicio4_metodoBurbuja;

const
  n=20;
type
  aVueltas= array [1..n] of integer;
  
procedure pCargaVueltas(var segundos:aVueltas; var suma:integer);
var
 i:integer;
begin
  writeln('------------------------------------------------');
  writeln('********************CARRERA*********************');
  writeln('------------------------------------------------');
  
  for i:=1 to 20 do
   begin
     writeln('ingrese velocidad en segundos vuelta ',i,' :');
     readln(segundos[i]); 
     suma:= suma+segundos[i]; 
   end;
end;

procedure pOrdenarTiempo(var segundos:aVueltas);
var
 i:integer;
 temporal:integer;
 intercambioOrdenamiento:boolean;
begin
  intercambioOrdenamiento:=false;
    
    while (intercambioOrdenamiento=false) do
    begin
      intercambioOrdenamiento:=true;
     for i:=1 to n-1 do
      begin
       if segundos[i]> segundos[i+1]then
        begin
         temporal:=segundos[i];
         segundos[i]:=segundos[i+1];
         segundos[i+1]:=temporal;
         intercambioOrdenamiento:=false;
        end;
      end;
    end;  

end;

procedure pMostarOrdenados(var segundos:aVueltas; var suma:integer);
var
 i:integer;
 promedio:real;
 diferencia:integer;
begin

    pOrdenarTiempo(segundos);
    writeln('---------------------------');
    writeln('   TIEMPO DE CADA VUELTA');
    writeln('---------------------------');
   for i:=1 to 20 do
   begin
    writeln(' vuelta ',i,' : ',segundos[i],'s ');
   end;
    promedio:=suma/20;
    diferencia:=segundos[20]-segundos[1];
    
    writeln('-----------------------------------------------------');
    writeln('Promedio total de todas las vueltas ',promedio:3:2);
    writeln('Diferencia entre el mayor y menor tiempo ',diferencia);
    writeln('-----------------------------------------------------');
    
end;

var
 aTiempo:aVueltas;
 isuma:integer; 
begin
    pCargaVueltas(aTiempo,isuma);  
    pMostarOrdenados(aTiempo,isuma);
    
    readln;
end.
