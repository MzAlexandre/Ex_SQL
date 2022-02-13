create database ex_2;

use ex_2;

create table produtos(
id int(5) auto_increment not null,
nome varchar(50) not null,
marca varchar(50),
cor varchar(50),
valor int(5),

primary key (id)
);

select * from produtos;

insert into produtos (nome, marca, cor, valor) values
("Camisa PSG", "Nike", "Azul Branco e Vermelho", 501),
("Air Jordan 5", "Nike", "Preto", 502),
("Polo lacoste", "lacoste", "Branca", 503),
("Moto G6", "Motorola", "Verde", 504),
("Camisa Barcelona", "Nike", "Vermelho e Azul", 499),
("Nike Shox", "Nike", "Preto e Verde", 498),
("Adidas Running", "Adidas", "Branco e Preto", 497),
("Boné Oakley", "Oakley", "Preto", 496);

select * from produtos;

select * from produtos where valor > 500;

select * from produtos where valor < 500;

update produtos set valor = 465 where id = 6;

select * from produtos;