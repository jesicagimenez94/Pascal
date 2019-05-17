program ejercicio1_burbuja;

type
  aNumeros=array[1..5]of integer;

procedure pCarga(var vector:aNumeros);
var
 i:integer;
begin
   for i:=1 to 5 do
   begin
     writeln('ingrese numero ',i,' :');
     readln(vector[i]);
   end;
end;

procedure pOrdenarAscendente(var vector:aNumeros);
var
 n,i,temporal:integer;
 intercambioOrdenamiento:boolean;
begin
    n:=5;
    intercambioOrdenamiento:=false;
    
    while (intercambioOrdenamiento=false) do
    begin
         intercambioOrdenamiento:=true;
     for i:=1 to n-1 do
      begin
       if vector[i]> vector[i+1]then
        begin
         temporal:=vector[i];
         vector[i]:=vector[i+1];
         vector[i+1]:=temporal;
         intercambioOrdenamiento:=false;
        end;
      end;
    end;  
end;

procedure pOrdenarDescendente(var vector:aNumeros);
var
 n,i,temporal:integer;
 intercambioOrdenamiento:boolean;
begin
   n:=5;
   intercambioOrdenamiento:=false;
    
    while (intercambioOrdenamiento=false) do
    begin
         intercambioOrdenamiento:=true;
     for i:=1 to n-1 do
      begin
       if vector[i]< vector[i+1]then
        begin
         temporal:=vector[i];
         vector[i]:=vector[i+1];
         vector[i+1]:=temporal;
         intercambioOrdenamiento:=false;
        end;
      end;
    end;  
end;


procedure pMostrarAscendenteDescendente(var vector:aNumeros; var opcion:integer);
var
 i:integer;
begin
  writeln;
  writeln('Eliga una opcion: ');
  writeln('-------------------------------------');
  writeln('1.ver numeros ordenados ascendente.');
  writeln('2.ver numeros ordenados descendente.');
  writeln('-------------------------------------');
  readln(opcion);
  writeln;
   
 if (opcion=1) then
 begin
 pOrdenarAscendente(vector);
 for i:=1 to 5 do
 begin
    write(vector[i],' ');
 end;
 end;
 
  if (opcion=2) then
 begin
 pOrdenarDescendente(vector);
 for i:=1 to 5 do
 begin
    write(vector[i],' ');
 end;
 end;
end;


var
  iopcion:integer;
  numeros:aNumeros;
begin
  pCarga(numeros);
  pMostrarAscendenteDescendente(numeros,iopcion);
  readln;
end.
