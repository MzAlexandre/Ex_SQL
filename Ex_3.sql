create database ex_3;

use ex_3;

create table estudantes(
id int(5) auto_increment not null,
nome varchar(50) not null,
idade int(3),
turma int(3),
nota double not null,

primary key (id)
);

select * from estudantes;

insert into estudantes (nome, idade, turma, nota) values
("Paulo", 19, 45, 7.5),
("José", 24, 34, 7.2),
("Ana", 28, 39, 7.4),
("Carlos", 31, 54, 7.9),
("Sabrina", 12, 39, 5.5),
("Maria", 15, 83, 4.2),
("Fernando", 38, 93, 4.6),
("Augusto", 84, 29, 3.0);

select * from estudantes;

select * from estudantes where nota > 7;

select * from estudantes where nota < 7;

update estudantes set nota = 4.3 where id = 8;

select * from estudantes;