create database doctorDB;

use doctorDB;

create table votacao (
	idVotacao int primary key auto_increment,
    nome_doutor varchar (45)
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
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor'),
	(null, '1th Doctor');

insert into usuario values
	(null, 'whovian@gmail.com', 'whovian', '123', 1);
    

select * from usuario;
select * from votacao;
    
    desc votacao;
    
select * from usuario join votacao on fkVotacao = idVotacao;


update votacao set qtd_votos = 1 where idVotacao = 1;

drop database doctorDB;

SELECT COUNT(nome_doutor) FROM votacao join usuario on fkVotacao = idVotacao WHERE idVotacao = 4;

