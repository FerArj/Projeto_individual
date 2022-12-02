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

create table aviso (
	idAviso int primary key auto_increment,
    titulo varchar (100),
	descricao varchar (255),
    fk_usuario int,
    foreign key (fk_usuario) references usuario (idUsuario)
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
    (null, 'enzo@gmail.com', 'Enzo', '12345678', 1),
    (null, 'vitor@gmail.com', 'Vitor', '12345678', 2),
    (null, 'joao@gmail.com', 'João', '12345678', 3),
    (null, 'maria@gmail.com', 'Marie', '12345678', 4),
    (null, 'joaquim@gmail.com', 'Joaquim', '12345678', 5),
    (null, 'lukas@gmail.com', 'Lukas', '12345678', 6),
    (null, 'nome1@gmail.com', 'nome1', '12345678', 7),
    (null, 'nome2@gmail.com', 'nome2', '12345678', 8),
    (null, 'nome3@gmail.com', 'nome3', '12345678', 9),
    (null, 'nome4@gmail.com', 'nome4', '12345678', 10);
    
select * from usuario;
select * from votacao;
    
    desc votacao;
    
select * from usuario join votacao on fkVotacao = idVotacao;

 SELECT a.idAviso AS idAviso,
            a.titulo,
            a.descricao,
            a.fk_usuario,
            u.idUsuario AS idUsuario,
            u.nome_usuario,
            u.email,
            u.senha
        FROM aviso a
            INNER JOIN usuario u
                ON a.fk_usuario = u.idUsuario;

/*update votacao set qtd_votos = 1 where idVotacao = 1;*/

SELECT COUNT(nome_doutor) FROM votacao join usuario on fkVotacao = idVotacao WHERE idVotacao = 2;

select v.nome_doutor as doutor, count(u.fkVotacao) as qtd from usuario as u join votacao as v on v.idVotacao = u.fkVotacao group by u.fkVotacao;


select v.nome_doutor as doutor, count(u.fkVotacao) as qtd  
                            from usuario as u join votacao as v 
                            on v.idVotacao = u.fkVotacao 
                                group by u.fkVotacao order by count(u.fkVotacao) desc;
                                
                                
	-- DESCRICAO SAMUEL - 12TH DOCTOR
-- Meu personagem tem como alter-ego um cientista louco, possuindo características egocêntricas, anormais. Uma forte característica do personagem é sua teimosia, o impedindo de diferenciar certas situações, assim, confundindo todos ao seu redor que passam a considerá-lo estranho, ou até mesmo insensível, pela sua falta de distinção.
-- pronto
-- dei ctrl c e ctrl v man
-- confia

	-- DESCRICAO DIGO - 13TH DOCTOR
    
    -- Dexter é um doutor fechado, sua aparência física o torna um pouco sombrio, seu temperamento frio, calmo e calculista o deixa as pessoas assustadas, mas isso tudo aconteceu após ele fazer uma grande descoberta e guardar esse segredo consigo. No entanto, ele é um doutor muito sábio e ágil em seus serviços