program ejercicio2_burbuja;

const
  n=10;
type
  aMetros= array[1..n]of real;
  ametros1=array[1..n]of real;
  
procedure pCargar(var deportista1:aMetros; var deportista2:aMetros1);
var
 i:integer;
begin
   
  writeln('*******PROGRAMA LANZAMIENTO CON JABALINA: *******');
  writeln;
  for i:=1 to 10 do
  begin
   writeln('cargar lanzamientos primer deportista  ',i,' :');
   readln(deportista1[i]);
  end;
    
   writeln;
  writeln('-----------------------------------------------------------------------------------------------------------');
   writeln;
  
  for i:=1 to 10 do
  begin
    writeln('cargar lanzamiento segundo  deportista  ',i,' :');
    readln(deportista2[i]);
  end;
  writeln; 
end;

procedure pOrdenarLanzamientos(var deportista1:aMetros; var deportista2:aMetros1);
var
 i:integer;
 temporal,temporal1:real;
 ordenamiento:boolean;
begin
    ordenamiento:=false;
    
    while (ordenamiento=false) do
    begin
         ordenamiento:=true;
     for i:=1 to n-1 do
      begin
       if deportista1[i]> deportista1[i+1]then
        begin
         temporal:=deportista1[i];
         deportista1[i]:=deportista1[i+1];
         deportista1[i+1]:=temporal;
         ordenamiento:=false;
         end;
      if deportista2[i]> deportista2[i+1]then
        begin
         temporal1:=deportista2[i];
         deportista2[i]:=deportista2[i+1];
         deportista2[i+1]:=temporal1;
         ordenamiento:=false;
        end;
      end;
    end;
       
       
 end;
procedure pMostrar(var deportista1:aMetros; var deportista2:aMetros1);
var
 i:integer;
begin
   writeln('***********************************************************************************************************');
  pOrdenarLanzamientos(deportista1,deportista2);
  for i:=1 to 10 do
  begin
    writeln('|primer deportista  metros cargados : ',deportista1[i]:2:3,' m |');
  end;
  
   writeln;
  writeln('-----------------------------------------------------------------------------------------------------------');
   writeln;
  
  for i:=1 to 10 do
  begin
  writeln('|segundo deportista metros cargados : ',deportista2[i]:2:3,' m |');
  end;
  writeln;
end;

procedure pGanador(var deportista1:aMetros; var deportista2:aMetros1);
begin
   pOrdenarLanzamientos(deportista1,deportista2);
   
  if deportista1[10]< deportista2[10] then
   writeln('el ganador es el segundo deportista con ',deportista2[10]:3:2,' m ');
 
   
  if deportista1[10]>deportista2[10] then
   writeln('el ganador es el primer deportista con ',deportista1[10]:3:2,' m ');

   
  if deportista1[10]=deportista2[10] then
    writeln('ambos deportistas empataron con ',deportista1[10]:3:2,' m el primer deportista y ',deportista2[10]:3:2,' m el segundo deportista.');
  
end;

var
 dep1:aMetros;
 dep2:aMetros1;
begin
   pCargar(dep1,dep2);
   pMostrar(dep1,dep2);
   pGanador(dep1,dep2);
  
  readln;
end.
