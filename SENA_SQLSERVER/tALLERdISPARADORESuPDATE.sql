create table socios( 
 documento char(8) not null, 
 nombre varchar(30), 
 domicilio varchar(30), 
 constraint PK_socios primary key(documento) 
); 


create table inscriptos( 
 numero int identity, 
 documento char(8) not null, 
 deporte varchar(20), 
 matricula char(1), 
 constraint FK_inscriptos_documento 
 foreign key (documento) 
 references socios(documento), 
 constraint CK_inscriptos_matricula check (matricula in ('s','n')),  constraint PK_inscriptos primary key(documento,deporte) ); 

 create table morosos( 
 documento char(8) not null 
);

insert into socios values('22222222','Ana Acosta','Avellaneda 800'); insert into socios values('23333333','Bernardo Bustos','Bulnes 345'); insert into socios values('24444444','Carlos Caseros','Colon 382'); insert into socios values('25555555','Mariana Morales','Maipu 234'); 
insert into inscriptos values('22222222','tenis','s'); 
insert into inscriptos values('22222222','natacion','n'); 
insert into inscriptos values('23333333','tenis','n'); 
insert into inscriptos values('24444444','futbol','s'); 
insert into inscriptos values('24444444','natacion','s'); 
insert into morosos values('22222222'); 
insert into morosos values('23333333'); 


 create trigger Disparadorsolo1
  on inscriptos
  for update
  as
   if (select count(*) from deleted) > 1
   begin
    raiserror('No puede actualizar más de un registro',16,1)
    rollback transaction
   end;


    create trigger disparadorInscritos
  on inscriptos
  for update
  as
   if update(matricula)
     if (select matricula from inserted)='n' and (select matricula from deleted)='s'
     begin
      raiserror('No puede colocar impaga una cuota paga.', 16, 1)
      rollback transaction
     end
     else
      if (select matricula from inserted)='s' and (select matricula from deleted)='n'
       delete morosos
        from morosos
        join deleted
        on deleted.documento=morosos.documento
        where morosos.documento=deleted.documento;

		update inscriptos set matricula='s' where numero=2;

		select *from inscriptos; 
select *from morosos; 


