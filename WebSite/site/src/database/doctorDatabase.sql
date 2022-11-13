create database doctorDB;

use doctorDB;

create table votacao (
	idVotacao int primary key auto_increment,
    nome_doutor varchar (45),
    qtd_votos int,
    data_hora DATETIME
);

create table usuario (
	idUsuario int primary key auto_increment,
    email varchar(45),
    nome_usuario varchar(45),
    senha varchar(15),
	fkVotacao int,
    foreign key (fkVotacao) references votacao (idVotacao)
);

insert into votacao values
	(null, '1th Doctor', null, null),
	(null, '2th Doctor', null, null),
	(null, '3th Doctor', null, null),
	(null, '4th Doctor', null, null),
	(null, '5th Doctor', null, null),
	(null, '6th Doctor', null, null),
    (null, '7th Doctor', null, null),
	(null, '8th Doctor', null, null),
	(null, '9th Doctor', null, null),
	(null, 'War Doctor', null, null),
	(null, '10th Doctor', null, null),
	(null, '11th Doctor', null, null),
	(null, '12th Doctor', null, null),
    (null, '13th Doctor', null, null),
	(null, '14th Doctor', null, null);

insert into usuario values
	(null, 'whovian@gmail.com', 'whovian', '123', 1);
    

select * from usuario;
select * from votacao;
    
select * from usuario join votacao on fkVotacao = idVotacao;
