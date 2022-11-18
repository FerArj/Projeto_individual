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
	(null, '2th Doctor'),
	(null, '3th Doctor'),
	(null, '4th Doctor'),
	(null, '5th Doctor'),
	(null, '6th Doctor'),
	(null, '7th Doctor'),
	(null, '8th Doctor'),
	(null, 'War Doctor'),
	(null, '9th Doctor'),
	(null, '10th Doctor'),
	(null, '11th Doctor'),
	(null, '12th Doctor'),
	(null, '13th Doctor'),
	(null, '14th Doctor');

insert into usuario values
	(null, 'whovian2@gmail.com', 'whovian2', '123', 2);
    

select * from usuario;
select * from votacao;
    
    desc votacao;
    
select * from usuario join votacao on fkVotacao = idVotacao;


update votacao set qtd_votos = 1 where idVotacao = 1;

drop database doctorDB;

SELECT COUNT(nome_doutor) FROM votacao join usuario on fkVotacao = idVotacao WHERE idVotacao = 2;

select votacao.nome_doutor as doutor, count(usuario.fkVotacao) as qtd from usuario as u join votacao as v on v.idVotacao = u.fkVotacao group by u.fkVotacao;

select count(nome_doutor) as doutor from votacao join usuario on fkVotacao = idVotacao group by fkVotacao;