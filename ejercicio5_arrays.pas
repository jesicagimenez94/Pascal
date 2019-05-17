(* 5. Rellene un array con 12 nombres de personas. Luego, solicite por teclado un
determinado nombre y compruebe si existe o no dentro del array. *)

program ejercicio_5;
                       
type
  aNombres= array [1..12] of string;
 
  
var
  Snombres:aNombres;
  
procedure pIngresarNombres( var nombres:aNombres);
var
i:integer;
nom:string;
resultado:boolean;
   
begin

  for i:=1 to 12 do
  begin                        
  writeln('ingrese nombre ',i,' : ');
  readln(nombres[i]); 
  end;
  
  writeln;
  writeln('introduzca el nombre a buscar: ');
  readln(nom);
  writeln;
  
  if (nombres[i]=nom) then
     resultado:= true;
   
  if (resultado=true) then
    begin
     writeln('------------------------------------------');
     writeln('el nombre se encuentra dentro del array ');
     writeln('------------------------------------------');
    end;
    
  if (resultado=false) then
    begin
     writeln('------------------------------------------');
     writeln('el nombre no se encuentra dentro del array ');
     writeln('------------------------------------------');
    end;
end;



begin 
  pIngresarNombres(Snombres);
   
readln;  

end.
