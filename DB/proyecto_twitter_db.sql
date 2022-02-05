create database proyecto_twitter_db
go

use proyecto_twitter_db
go

create table twit (
	ID bigint not null primary key identity (1, 1),
	Contenido varchar(200) not null
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