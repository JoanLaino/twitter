create database proyecto_twitter_db
go

use proyecto_twitter_db
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

create table twit (
	ID bigint not null primary key identity(1, 1),
	Contenido varchar(200) not null,
	Estado bit not null default (1),
	IDUsuario int not null foreign key references Usuarios(ID)
)
go

create procedure sp_enviar_twit (
	@Contenido varchar(200),
	@IDUsuario int
)
as
begin
	insert into twit(Contenido, IDUsuario)
	values(@Contenido, @IDUsuario)
end
go

--create trigger tr_eliminar_twit (
--)

select T.Contenido as 'Contenido', T.ID as 'ID', U.Nombres + ' ' + U.Apellidos as 'Nombre', U.Usuario as 'Usuario' from Usuarios as U
inner join twit as T on U.ID = T.IDUsuario
where Estado = 1 and T.IDUsuario = 2 order by T.ID desc
go
