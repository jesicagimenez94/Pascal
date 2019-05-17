(*. Lea 5 números por teclado, los copie a otro array multiplicados por 2 y
muestre el segundo array. *)

program ejercicio_4;

Type
  aNumeros= array [1..5] of integer;
  aMultiplicados= array[1..5] of integer;

var
  numeros:aNumeros;
  multi:aMultiplicados;
  i:integer;
  
begin
  for i:=1 to 5 do
  begin
    writeln('ingrese ',i,'° numero: ');
    readln(numeros[i]);
    multi[i]:=numeros[i]*2;
  end;
  
  writeln('---------------------------');
  for i:=1 to 5 do
  begin
  write(multi[i],' ');
  end;
  writeln('');
  writeln('---------------------------');
  
readln;

end.
