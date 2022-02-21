CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id_categoria INT(4) NOT NULL AUTO_INCREMENT,
setor_alimento VARCHAR(50) NOT NULL,
tipo_alimento VARCHAR(50) NOT NULL,

 PRIMARY KEY (id_categoria)
 );

CREATE TABLE tb_produto(
id_produto INT(4) NOT NULL AUTO_INCREMENT,
nome_produto VARCHAR(50) NOT NULL,
peso_produto_kg DECIMAL (3,2) NOT NULL,
preco_produto DECIMAL(5,2) NOT NULL,
fk_categoria INT(4) NOT NULL,

PRIMARY KEY(id_produto),
FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria(setor_alimento, tipo_alimento) VALUES
("Peixaria", "Peixes"),		
("Hortaliças", "Verduras"),
("Frutas", "Cítricas"),
("Legumes", "Raízes"),
("Frios", "Fatiados");

INSERT INTO tb_produto(nome_produto, peso_produto_kg, preco_produto, fk_categoria) VALUES
("Salmão Defumado", 0.8, 25.50, 1),
("Alface Americana", 0.5, 8.50, 2),
("Laranja", 1.0, 10.50, 3),
("Beterraba", 8.0, 60.50, 4),
("Salame", 1.0, 120.00, 5),
("Atum Enlatado", 1.0, 30.50, 1),
("Brócolis", 0.8, 15.95, 2),
("Abacaxi", 1.0, 20.60, 3);

SELECT * FROM tb_produto where preco_produto > 50;

SELECT * FROM tb_produto WHERE preco_produto BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome_produto LIKE "%C%";
  
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria 
WHERE tipo_alimento IN ("Peixes", "Verduras");

