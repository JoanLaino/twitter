create database proyecto_twitter_db
go

use proyecto_twitter_db
go

create table tweet (
	ID bigint not null primary key identity (1, 1),
	Contenido varchar(200) not null
)
go