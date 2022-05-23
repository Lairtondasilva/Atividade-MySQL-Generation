create database db_escola;

use db_escola;

Create table aluno(
	id bigint(5) auto_increment,
    nome varchar(30) not null,
    turma_ano int,
    nota decimal,
    matricula varchar(12),
    primary key(id)
);

insert into aluno(nome,turma_ano,nota,matricula) values ("Alison",5,7.5,"12345-34");
insert into aluno(nome,turma_ano,nota,matricula) values ("Pedro",6,6.5,"16345-34");
insert into aluno(nome,turma_ano,nota,matricula) values ("Lailson",8,9,"18545-34");
insert into aluno(nome,turma_ano,nota,matricula) values ("Maria",5,4,"56364-2");
insert into aluno(nome,turma_ano,nota,matricula) values ("Carolina",5,8,"47492-2");
insert into aluno(nome,turma_ano,nota,matricula) values ("Mateus",5,7,"36452-45");
insert into aluno(nome,turma_ano,nota,matricula) values ("Thomas",5,10,"49294-1");
insert into aluno(nome,turma_ano,nota,matricula) values ("Jefferson",5,5,"39574-67");

select * from aluno where nota>7;
select * from aluno where nota<7;

update aluno set nota=8 where id=8;

select * from aluno;