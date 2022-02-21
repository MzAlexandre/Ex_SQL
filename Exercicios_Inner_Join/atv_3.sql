create database db_farmacia_do_bem;

use db_farmacia_do_bem;

CREATE TABLE tb_categoria (
id_categoria INT(4) NOT NULL AUTO_INCREMENT,
tipo_produto VARCHAR(100) NOT NULL,
setor_produto VARCHAR(100) NOT NULL,

primary key (id_categoria)
);

CREATE TABLE tb_produto(
id_produto INT(4) NOT NULL AUTO_INCREMENT,
nome_produto VARCHAR(50) NOT NULL,
validade_produto date NOT NULL,
preco_produto DECIMAL(5,2) NOT NULL,
fk_categoria INT(4) NOT NULL,    
    
primary key (id_produto),
FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(id_categoria)
);

insert into tb_categoria (tipo_produto, setor_produto) values 
("Anti-inflamatório", "Medicamentos"),
("Sabonete líquido", "higiene"),
("Cereal", "Alimentos"),
("Acetona", "Cosméticos"),
("Vitamina", "Saúde");

insert into tb_produto (nome_produto, validade_produto, preco_produto, fk_categoria) values 
("Johson&Johnson", '2022-09-29', 25.50, 2),
("Sucrilhos", '2022-11-25', 5.00, 3),
("Popy Max", '2022-03-17', 10.00, 4),
("Vitamina B2", '2022-09-21', 55.00, 5),
("Flanax", '2023-02-24', 51.00, 1),
("Pamppers", '2023-01-02', 65.30, 2),
("Nescau", '2022-04-01', 5.00, 3);

select * from tb_produto where preco_produto > 50.00;

select * from tb_produto where preco_produto between 3 and 60;

select * from tb_produto where nome_produto like "%b%";

select * from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_categoria;

select * from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_categoria
where setor_produto = "Cosméticos";





