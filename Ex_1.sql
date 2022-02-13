create database ex_1;

use ex_1;

create table funcionarios(
id int(5) auto_increment not null,
nome varchar(50) not null,
idade int(3),
cargo varchar(100),
salario int(5) not null,

primary key (id)
);

select * from funcionarios;

insert into funcionarios (nome, idade, cargo, salario) values 
("Anderson", 34, "Consultor de RH", 2001),
("Jéssica", 23, "Gestora de recrutamento e seleção", 2002),
("Carlos", 46, "Assistente de Departamento pessoal", 2003),
("Carol", 19, "Analista de treinamento e capacitação", 1999),
("Emelly", 22, "Analista de RH", 1998);

select * from funcionarios;

select * from funcionarios where salario > 2000;

select * from funcionarios where salario < 2000; 

UPDATE funcionarios SET salario = 1997 WHERE id = 5;

select * from funcionarios;