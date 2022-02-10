create database proyecto_twitter_db
go

use proyecto_twitter_db
go

create table twit (
	ID bigint not null primary key identity (1, 1),
	Contenido varchar(200) not null,
	Estado bit not null default (1)
)
go

create procedure sp_enviar_twit (
	@Contenido varchar(200)
)
as
begin
	insert into twit(Contenido)
	values(@Contenido)
end
go

create trigger tr_eliminar_twit (
)

select Contenido, ID from twit t where Estado = 1 order by ID desc
go