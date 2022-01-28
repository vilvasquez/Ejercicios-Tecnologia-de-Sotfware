create database ejercio
create table usuarios2 (
id int primary key identity (1,1) not null,
nombre varchar(20),
apellidos varchar(15) not null, 
telefono   float (14) not null,
direccion varchar (30),
);

CREATE TABLE Alumnos (
Id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
Nombre VARCHAR(40) NOT NULL,
Apellido VARCHAR(40) NOT NULL,
Domicilio TEXT,
Fecha_Nacimiento DATETIME
);

insert Alumnos  values('danilo','tique','ibague','03/02/2002')
insert usuarios2  values('juan','Baracaldo','23234567456','mz g casa 4 sanpedro')
select * from Alumnos

select * from usuarios2