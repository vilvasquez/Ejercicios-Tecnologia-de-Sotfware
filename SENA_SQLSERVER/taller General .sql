
 insert into agenda (apellido,nombre,domicilio,telefono) 
 values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono) 
 values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono) 
 values ('Lopez','Maria','Urquiza 333','4545454'); 


 update agenda set nombre='Juan'
where nombre='juan jose'

 update agenda set telefono='4545454'
where telefono='44455666'

create table articulos( 
 codigo int identity, 
 nombre varchar(20), 
 descripcion varchar(30), 
 precio smallmoney, 
 cantidad tinyint default 0, 
 primary key (codigo) 
); 

update articulos set precio=precio+(precio*0.15);

select nombre+','+ descripcion from articulos;

update articulos set cantidad=cantidad-5
where nombre='teclado';

create table libros( 
 codigo int identity, 
 titulo varchar(40) not null, 
 autor varchar(20) default 'Desconocido', 
 editorial varchar(20), 
 precio decimal(6,2), 
 cantidad tinyint default 0, 
 primary key (codigo) 
); 


insert into libros (titulo,autor,editorial,precio) 
 values('El aleph','Borges','Emece',25); 
insert into libros 
 values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100); insert into libros (titulo,autor,editorial,precio,cantidad) 
 values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);


 select titulo,autor,editorial,precio,cantidad,
precio*cantidad as monto_total
from libros;

select titulo,autor,precio,precio*0.1 as descuento,
precio-(precio*0.1) as precio_final
from libros
where editorial='Emece';

select titulo+', '+autor as titulo_y_autor
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
 values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10  10:10');
insert into visitas (nombre,mail,pais,fecha) 
 values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10  21:30'); 
insert into visitas (nombre,mail,pais,fecha) 
 values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45'); insert into visitas (nombre,mail,pais,fecha) 
 values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12  08:15'); 
insert into visitas (nombre,mail,pais,fecha) 
 values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12  20:45'); 
insert into visitas (nombre,mail,pais,fecha) 
 values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20'); insert into visitas (nombre,mail,pais,fecha) 
 values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');



select * from visitas order by fecha desc;

select nombre,pais,datename(month,fecha)
from visitas
order by pais,datename(month,fecha) desc;


select mail,pais from visitas
where datename(month,fecha)='october'
order by 2;

create table medicamentos( 
 codigo int identity, 
 nombre varchar(20), 
 laboratorio varchar(20), 
 precio decimal(5,2), 
 cantidad tinyint, 
 primary key(codigo) 
); 

insert into medicamentos 
 values('Sertal','Roche',5.2,100); 
insert into medicamentos 
 values('Buscapina','Roche',4.10,200); 
insert into medicamentos 
 values('Amoxidal 500','Bayer',15.60,100); 
insert into medicamentos 
 values('Paracetamol 500','Bago',1.90,200); 
insert into medicamentos 
 values('Bayaspirina','Bayer',2.10,150);  
insert into medicamentos 
 values('Amoxidal jarabe','Bayer',5.10,250); 




 select codigo,nombre
from medicamentos
where laboratorio='Roche' and
precio<5;


select * from medicamentos
where laboratorio='Roche' or
precio<5;


select * from medicamentos
where not laboratorio='Bayer' and
cantidad=100;


delete from medicamentos
where laboratorio='Bayer' and
precio>10;

update medicamentos set cantidad=200
where laboratorio='Roche' and
precio>5;

delete from medicamentos
where laboratorio='Bayer' or
precio<3;

create table empleados(
nombre varchar(30),
documento char(8),
domicilio varchar(30),
fechaingreso datetime,
seccion varchar(20),

sueldo decimal(6,2),
primary key(documento)
);

insert into empleados
values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
insert into empleados
values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
insert into empleados
values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
insert into empleados
values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
insert into empleados
values('Marcos Juarez','30000111','Rivadavia 801','2002-09-
22','Contaduria',630.70);
insert into empleados
values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
insert into empleados
values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-
28','Sistemas',800);
  

 select * from empleados
  where nombre like '%Perez%';

   select * from empleados
  where domicilio like 'Co%8%';

   select * from empleados
  where documento like '%[02468]';

  select * from empleados
where documento not like '%[13]' and nombre like '%ez%';

select * from empleados
where nombre like '%y%' or nombre like '%j%';




select nombre,seccion from empleados
where seccion like '[SG]________';


 select nombre,seccion from empleados
  where seccion not like '[SG]%';

  
 select nombre,sueldo from empleados
  where sueldo not like '%.00';


  select * from empleados
  where fechaingreso like '%1990%';