program ejercicio2_registros;

type 
  vecNotas=array[1..4]of real; 
  
  asig=record
    nomAsignatura:string;
    nota:vecNotas;
  end;
  
  alumnos=record
   nombre:string[20];
   asignatura:asig;
  end;
                                       
  VecAlumnos=array[1..10]of alumnos;
  
  
procedure pCarga(var vectorAlum:VecAlumnos );
var
 i,j:integer;
begin
   for i:=1 to 10 do
    begin
      writeln('datos alumno ',i,' :');
      writeln;
      write('Nombre: ');read(vectorAlum[i].nombre);
      writeln('-Asignatura-');
      write('Nombre Asignatura : ');read(vectorAlum[i].asignatura.nomAsignatura);
      for j:=1 to 4 do
      begin
      write('Nota: ');read(vectorAlum[i].asignatura.nota[j]);
      end;     
    end;
end;

procedure pPromedio(var vectorAlum:VecAlumnos; var resul:real );
var
  i:integer;
begin
  for i:=1 to 10 do
  begin
   resul:=(vectorAlum[i].asignatura.nota[1]+vectorAlum[i].asignatura.nota[2]+vectorAlum[i].asignatura.nota[3]+vectorAlum[i].asignatura.nota[4] )/4;
  end;
end;


procedure pMostrar(var vectorAlum:VecAlumnos; var resul:real);
var
 i:integer;
begin 
  pPromedio(vectorAlum,resul);
  for i:=1 to 10 do
   begin
     write('Nombre alumno: ',vectorAlum[i].nombre,'Nombre Asignatura : ',vectorAlum[i].asignatura.nomAsignatura);
     write('Notas: ',vectorAlum[i].asignatura.nota[1]:3:2,' ',vectorAlum[i].asignatura.nota[2]:3:2,' ',vectorAlum[i].asignatura.nota[3]:3:2,' ',vectorAlum[i].asignatura.nota[4]:3:2,' ');
     write('Promedio: ',(resul):3:2);
     writeln;
   end;
   
end;

var
 a:VecAlumnos;
 acum:real;   
begin
   pCarga(a);
   pMostrar(a,acum);
   readln;
   readln;

end.
