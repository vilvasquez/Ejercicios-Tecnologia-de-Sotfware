
 create table alumnos(
  apellido varchar(30),
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso date,
  fechanacimiento date
 );

 SET DATEFORMAT dmy;

 insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');
 
 insert into alumnos values('Musk','Elon','1426777','usa','03-03-1984','11/03/1356');

  insert into alumnos values('fredy','gruger','85857846','jordan 7 etapa','01-07-90',null);