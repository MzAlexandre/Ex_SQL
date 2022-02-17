create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id int not null auto_increment,
tipo_pizza varchar(50),
local_pizzaria varchar(50),

primary key (id)
);

ALTER TABLE tb_categoria CHANGE local_pizzaria local_pizza varchar(100);

create table tb_pizza(
id_pizza int not null auto_increment,
nome varchar(50),
ingredientes varchar(200),
preco decimal(4,2),
fk_pizza int not null,

primary key (id_pizza),
foreign key (fk_pizza) references tb_categoria (id)
);

select * from tb_categoria;

select * from tb_pizza;

insert into tb_categoria (tipo_pizza, local_pizza) values
("Doce", "Rua Agudos, 132"),
("Salgada", "Rua Canário, 345"),
("Doce", "Rua Pelé, 34"),
("Vegana", "Rua Getulio Vargas, 76"),
("Vegana", "Rua do tiro, 66");

insert into tb_pizza (nome, ingredientes, preco, fk_pizza) values 
("Brigadeiro", "Chcolate, Granulado, Calda de chocolate", 50.00, 1),
("Calabresa", " muçarela, calabresa e cebola.", 35.00, 2),
("Romeu e Julieta", "Goiabada, Mussarela", 25.00, 3),
("Marguerita", " tomate, molho de tomate, muçarela, manjericão e azeitona", 60.00, 4),
("Brócolis", "Brócolis, Palmito e Azeitona", 20.00, 5),
("Morango com chocolate", "Morango, Chocolate, Calda de chocolate", 45.00, 1),
("Portuguesa", " ovos, muçarela e ervilha.", 30.00, 2),
("Banofe", " Maisena, Doce de leite, Banana, Canela", 20.00, 3);

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "c%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.fk_pizza;

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.fk_pizza where tipo_pizza  = "doce";

