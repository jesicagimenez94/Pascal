program ejercicio3_registros;
const
n=20;

type 
  
  anios=1..100;
  
  trabajadores=record
   nombre:string[20];
   edad:anios;
   sexo:char;
   estadoCivil:string[20];
   SalarioBase:real;
  end;
                                       
  VecTrabajadores=array[1..n]of trabajadores;
  
  
  
procedure pCarga(var T:VecTrabajadores; var contSexo:Integer; var contECivil:integer; var suma:real);
var
i:integer;
begin
   for i:=1 to n do
    begin
      writeln('datos trabajador ',i,' :');
      writeln;
      write('Nombre: ');read(T[i].nombre);
      writeln('Edad: ');read(T[i].edad);
      writeln('Sexo: ');read(T[i].sexo);
      writeln('Estado Civil: ');read(T[i].estadoCivil);
      writeln('Salario base: ');read(T[i].SalarioBase);
      
      if (T[i].sexo='m')or(T[i].sexo='M')then
          contSexo:=contSexo+1;
      if(T[i].estadoCivil='casada')or(T[i].estadoCivil='CASADA')then    
          contECivil:=contECivil+1;
      suma:=suma+T[i].SalarioBase;
    end;
end;


procedure pMostrar(var vecT:VecTrabajadores; var contS:integer; var contEC:integer; var suma:real);
var
i:integer;
begin 
  for i:=1 to n do
   begin
     write('Nombre',vecT[i].nombre,' Edad : ',vecT[i].edad,' sexo: ',vecT[i].sexo,' Estado Civil: ',vecT[i].estadoCivil,' Salario base: ',vecT[i].salarioBase:3:2);
     writeln;
   end;
   
    writeln('Cantidad de trabajadores sexo M: ',contS);
    writeln('Cantidad de trabajadoras casadas: ',contEC);
    writeln('total suma todos los salarios: ',suma);
   
end;

var
aT:VecTrabajadores;
cont1:integer; 
cont2:integer;
sum:real;  
begin
   pCarga(aT,cont1,cont2,sum);
   pMostrar(aT,cont1,cont2,sum);
   readln;

end.
