create  database eva_finaL

DROP TABLE LIBROS

CREATE TABLE LIBROS(
CODIGO INT IDENTITY,
TITULO VARCHAR (40) NOT NULL,
AUTOR VARCHAR (20) DEFAULT 'DESCONOCIDO',
EDITORIAL VARCHAR(20),
PRECIO DECIMAL (6,2),
CANTIDAD TINYINT DEFAULT 0,
PRIMARY KEY (CODIGO)

);

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 
SELECT TITULO ,AUTOR,EDITORIAL,PRECIO,CANTIDAD,
PRECIO*CANTIDAD AS MONTO_REAL 
FROM LIBROS;


 select titulo,autor,precio,
  precio*0.1 as descuento,
  precio-(precio*0.1) as 'precio final'
  from libros
  where editorial='Emece';

   select titulo+'-'+autor as "Título y autor"
  from libros;

   create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fecha datetime,
  primary key(numero)
);

insert into visitas (nombre,mail,pais,fecha)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');


   select * from visitas
  order by fecha desc;

  
 select nombre,pais,datename(month,fecha)
  from visitas
  order by pais,datename(month,fecha) desc;

  
 select nombre,mail,
  datename(month,fecha) mes,
  datename(day,fecha) dia,
  datename(hour,fecha) hora
  from visitas
  order by 3,4,5;

   select mail, pais
  from visitas
  where datename(month,fecha)='October'
  order by 2;

   create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  primary key(documento)
 );

  insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null);

  
 select count(9)
  from empleados;
  
 select count(sueldo)
  from empleados
  where seccion='Secretaria';
  select max(sueldo) as 'Mayor sueldo',
  min(sueldo) as 'Menor sueldo'
  from empleados;

   select max(cantidadhijos)
  from empleados
  where nombre like '%Perez%';

  
 select avg(sueldo)
  from empleados;

  
 select avg(sueldo)
  from empleados
  where seccion='Secretaria';

  select avg(cantidadhijos)
  from empleados
  where seccion='Sistemas';


  create table deportes(
  codigo tinyint identity,
  nombre varchar(30),
  profesor varchar(30),
  primary key (codigo)
 );

  create table inscriptos(
  documento char(8),
  codigodeporte tinyint not null,
  matricula char(1) --'s'=paga 'n'=impaga
 );
  insert into deportes values('tenis','Marcelo Roca');
 insert into deportes values('natacion','Marta Torres');
 insert into deportes values('basquet','Luis Garcia');
 insert into deportes values('futbol','Marcelo Roca');
 
 insert into inscriptos values('22222222',3,'s');
 insert into inscriptos values('23333333',3,'s');
 insert into inscriptos values('24444444',3,'n');
 insert into inscriptos values('22222222',2,'s');
 insert into inscriptos values('23333333',2,'s');
 insert into inscriptos values('22222222',4,'n'); 
 insert into inscriptos values('22222222',5,'n'); 


 select documento,d.nombre as deporte,matricula
  from inscriptos i
  join deportes d
  on codigodeporte=codigo;

  select documento,d.nombre as deporte,matricula
  from inscriptos i
  left join deportes d
  on codigodeporte=codigo;

   select documento,d.nombre as deporte,matricula
  from deportes d
  right join inscriptos i
  on codigodeporte=codigo;


   select nombre
  from deportes d
  left join inscriptos i
  on codigodeporte=codigo
  where codigodeporte is null;



  create table articulos(
  codigo int identity,
  descripcion varchar(30),
  precio decimal(5,2) not null,
  cantidad smallint not null default 0,
  montototal as precio *cantidad
 );

  insert into articulos values('birome',1.5,100);
 insert into articulos values('cuaderno 12 hojas',4.8,150);
 insert into articulos values('lapices x 12',5,200);



 update articulos set precio=2 where descripcion='birome';
 select * from articulos; 
 
