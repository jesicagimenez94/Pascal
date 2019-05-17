program registro_ejercicio1;

const
n=5;

type
   anios=1..100;
   
   dire=record
     calle:string;
     numero:integer;
  end;
  
   persona=record
     nombre:string[20];
     edad:anios;
     sexo:char;
     direccion:dire;  
     telefono:string[10]; 
   end;
   
   aVecPer=array[1..n]of persona;

procedure pCarga(var per:aVecPer);
var
i:Integer;
begin
  for i:=1 to 5 do
   begin
      writeln('_Persona_',i,' :');
      writeln;
      Write('Nombre: ');
      read(per[i].nombre);
      write('Edad: ');
      read(per[i].edad);
      write('Sexo: ');
      read(per[i].sexo);
      writeln('_Direccion_');
      write('Calle: ');
      read(per[i].direccion.calle);
      write('Altura: ');
      read(per[i].direccion.numero);
      write('Telefono: ');
      read(per[i].telefono);    
      writeln;  
   end;
end;

procedure pOrdenarEdad(var per:aVecPer);
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
       if per[i].edad> per[i+1].edad then
        begin
         temporal:=per[i].edad;
         per[i].edad:=per[i].edad;
         per[i+1].edad:=temporal;
         intercambioOrdenamiento:=false;
        end;
      end;
    end;  

end;

procedure pMostrar(var per:aVecPer);
var
i:Integer;
begin
  for i:=1 to 5 do
   begin
      WriteLn('Nombre: ',per[i].nombre,' Edad: ',per[i].edad,' Sexo: ',per[i].sexo,' Direccion_Calle: ',per[i].direccion.calle,' Nro: ',per[i].direccion.numero,' telefono: ',per[i].telefono);  
      writeln; 
   end;
   pOrdenarEdad(per);
   writeln('la persona de menor edad es ',per[1].nombre,' que tiene: ',per[1].edad,' Años');
end;

var
  p:aVecPer;
begin
  pCarga(p);
  pMostrar(p); 
  readln;
  readln;
end.
