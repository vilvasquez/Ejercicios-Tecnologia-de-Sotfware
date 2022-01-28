if OBJECT_ID('agenda') is not null
drop table agenda;


create table "agenda"(

    apellido varchar (30),
	nombre varchar (20),
	direccion varchar (30),
	telefono varchar (11),

);


exec sp_tables @table_owner='dbo'

exec sp_columns agenda;

drop table agenda;
drop table agenda;



