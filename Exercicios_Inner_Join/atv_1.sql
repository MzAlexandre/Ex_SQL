create database db_gen_game_online;

use db_gen_game_online;

create table tb_classe(
id bigint auto_increment not null,
classe varchar(50),
arma varchar(50),

primary key (id)
);

create table tb_personagem(
id_personagem bigint auto_increment not null,
nome varchar(100),
ataque int(4),
defesa int(4),
vida int(4),
fk_classe bigint not null,

primary key(id_personagem),
foreign key(fk_classe) references tb_classe (id)
);

select * from tb_classe;

select * from tb_personagem;

insert into tb_classe (classe, arma) values
("Arqueiro", "Arco"),
("Mago", "Magia"),
("Lenhador", "Machado"),
("Arqueiro", "Arco"),
("Lenhador", "Machado");

insert into tb_personagem (nome, ataque, defesa, vida, fk_classe) values
("Groth", 2001, 1000, 2000, 1),
("Verme", 2002, 1100, 1222, 2),
("Rodman", 2003, 1200, 1333, 3),
("Kali", 2004, 2000, 1444, 1),
("Pluto", 1999, 2100, 2344, 2),
("Ice", 1998, 2200, 3444, 3),
("Thor", 1997, 2300, 2333, 1),
("Kratos", 1996, 2400, 1233, 2);

UPDATE tb_personagem SET nome = "Conan" WHERE id_personagem = 5;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "C%";

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.fk_classe;

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.fk_classe WHERE tb_classe.classe = "Arqueiro";