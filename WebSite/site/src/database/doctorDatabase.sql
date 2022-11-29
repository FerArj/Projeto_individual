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
    senha varchar(100),
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
	(null, 'whovian3@gmail.com', 'whovian3', '123', 2),
    (null, 'whovian4@gmail.com', 'whovian4', '123', 2),
    (null, 'whovian5@gmail.com', 'whovian5', '123', 2),
    (null, 'whovian6@gmail.com', 'whovian6', '123', 5),
    (null, 'whovian7@gmail.com', 'whovian7', '123', 6),
    (null, 'whovian8@gmail.com', 'whovian8', '123', 6),
    (null, 'whovian9@gmail.com', 'whovian9', '123', 7),
    (null, 'whovian10@gmail.com', 'whovian10', '123', 3),
    (null, 'whovian11@gmail.com', 'whovian11', '123', 5),
    (null, 'whovian12@gmail.com', 'whovian12', '123', 9),
    (null, 'whovian13@gmail.com', 'whovian13', '123', 7),
    (null, 'whovian14@gmail.com', 'whovian14', '123', 1),
    (null, 'whovian15@gmail.com', 'whovian15', '123', 1);
    

select * from usuario;
select * from votacao;
    
    desc votacao;
    
select * from usuario join votacao on fkVotacao = idVotacao;


/*update votacao set qtd_votos = 1 where idVotacao = 1;*/

SELECT COUNT(nome_doutor) FROM votacao join usuario on fkVotacao = idVotacao WHERE idVotacao = 2;

select votacao.nome_doutor as doutor, count(usuario.fkVotacao) as qtd from usuario as u join votacao as v on v.idVotacao = u.fkVotacao group by u.fkVotacao;

select v.nome_doutor as doutor, count(u.fkVotacao) as qtd from usuario as u join votacao as v on v.idVotacao = u.fkVotacao group by u.fkVotacao;


select v.nome_doutor as doutor, count(u.fkVotacao) as qtd  
                            from usuario as u join votacao as v 
                            on v.idVotacao = u.fkVotacao 
                                group by u.fkVotacao order by count(u.fkVotacao) desc;