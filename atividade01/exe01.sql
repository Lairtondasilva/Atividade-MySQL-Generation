create database db_Rh;
use db_Rh;

Create table colaboradores(
	id bigint(5) auto_increment,
    nome varchar (30) not null,
    salario decimal not null,
    contrato enum("clt","pj"),
    conta_bancaria varchar(20),
    primary key(id)
);

insert into colaboradores(nome,salario,contrato,conta_bancaria) values ("Lairton",3500,"clt","1765-2");
insert into colaboradores(nome,salario,contrato,conta_bancaria) values ("Pedro",1500,"clt","4536-2");
insert into colaboradores(nome,salario,contrato,conta_bancaria) values ("Marina",1750,"pj","1734-1");
insert into colaboradores(nome,salario,contrato,conta_bancaria) values ("Fernanda",60000,"PJ","4536-2");
insert into colaboradores(nome,salario,contrato,conta_bancaria) values ("João Lucas",15000,"clt","1355-7");

select * from colaboradores where salario>2000;
select * from colaboradores where salario<2000;


update colaboradores set nome="Tácio", salario = 4500.0 where id=3;


