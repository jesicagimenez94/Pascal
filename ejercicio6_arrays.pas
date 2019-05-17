(* 6. Crear un arreglo que permita almacenar un máximo de 20 números. Para ello,
deberá solicitar la carga por el usuario hasta que el mismo ha ingreso el valor -1.
Luego, recorra el vector informando los valores que se han llegado a almacenar el
mismo.*)

program ejercicio_6;

type
  aNumeros= array [1..20] of integer;

procedure pInformar_valores(var numeros:aNumeros);
var
 i:integer;
begin
  i:=1;


    repeat
    if (numeros[i]>-1) then
    begin
    for i:=1 to 20 do
    begin
    writeln('ingrese un numero ');
    readln(numeros[i]);
    end;
    end;
    until numeros[i]=-1;


    if(numeros[i]=-1) then
    begin
    for i:=1 to 20 do
      writeln(numeros[i]);
    end;
end;

var
  num:aNumeros;
  
begin
pInformar_valores (num);
readln;
end.
