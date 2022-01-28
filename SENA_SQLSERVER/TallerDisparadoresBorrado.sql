create trigger DIS_articulos1_borrar
on articulos1
for delete
as 
if exists(select *from deleted where stock>0)--si algun registro borrado tiene stock
begin raiserror('No puede eliminar artículos que tienen stock',16,1) rollback transaction end
else
begin declare @cantidad int
select @cantidad=count(*) from deleted
select 'Se eliminaron'+rtrim(cast(@cantidad as char(10)))+ ' registros' end;

delete from articulos1 where codigo=7

delete from articulos1 where codigo=2;

delete from articulos1 where descripcion like'%xx%';
delete from articulos1 where codigo<=3;

create trigger DIS_articulos1_borrar2
on articulos1
for delete
as
declare @cantidad int
select @cantidad=count(*) from deleted
if @cantidad>1
begin
raiserror('No puede eliminar más de 1 artículo',16,1)
rollback transaction
end;

delete from articulos1 where codigo=4;

delete from articulos1 where codigo=2;

delete from articulos1 where tipo='monitor';

delete from articulos1 where tipo='impresora';