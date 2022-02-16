create database proyecto_twitter_db
go

use proyecto_twitter_db
go

create table twit (
	ID bigint not null primary key identity(1, 1),
	Contenido varchar(200) not null,
	Estado bit not null default (1)
)
go

create table Usuarios (
	ID int not null primary key identity(1, 1),
	Usuario varchar(50) not null,
	Nombres varchar(50) not null,
	Apellidos varchar(50) not null,
	Mail varchar(50) not null,
	Pass varchar(50) not null,
	TipoUser int default(1)
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

--create trigger tr_eliminar_twit (
--)

select Contenido, ID from twit t where Estado = 1 order by ID desc
go