program ejercicio3_algBurbuja;

const
  n=10;
type
  aPrecios= array [1..n] of real;
  
procedure pCargaVentas(var vector:aPrecios);
var
 i:integer;
begin
 writeln('**********PRECIO DE VENTAS***********');
 for i:=1 to 10 do
  begin
    writeln('ingrese precio ',i,' :');
    readln(vector[i]);
  end;
  writeln;
end;

procedure pOrdenarVentas(var vector:aPrecios);
var
 i:integer;
 temporal:real;
 intercambioOrdenamiento:boolean;
begin
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

procedure pMostrarVentas(var vector:aPrecios );
var
 i:integer;
begin
  pOrdenarVentas(vector);
  
  writeln('---------------------------------');
  writeln(' Articulo    |Precios de venta');
  writeln('---------------------------------');
  for i:=1 to 10 do
  begin 
  writeln(' Limpieza    | $',vector[i]:3:2);
  end;
  
end;

var
 precio:aPrecios;

begin
  pCargaVentas(precio);
  pMostrarVentas(precio);
  readln;
end.
