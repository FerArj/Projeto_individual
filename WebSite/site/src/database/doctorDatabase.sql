create database doctorDB;
use doctorDB;

create table usuario (
	idUsuario int primary key auto_increment,
    email varchar(45),
    nome_usuario varchar(45),
    senha varchar(15)
);

select * from usuario;