create database db_ecommerce;
use db_ecommerce;

Create table produto(
id bigint(5) auto_increment,
nome varchar(20) not null,
valor decimal not null,
descricao text,
data_fabricacao date,
primary key(id)
);

insert into produto (nome,valor, descricao,data_fabricacao) values (
"geladeira",
1250,
"Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged.",
"2022-01-23"
);
insert into produto (nome,valor, descricao,data_fabricacao) values (
"Armário",
899.00,
"Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged.",
"2022-01-12"
);
insert into produto (nome,valor, descricao,data_fabricacao) values (
"Head Set",
250.00,
"Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged.",
"2022-03-04"
);
insert into produto (nome,valor, descricao,data_fabricacao) values (
"Teclado",
325.00,
"Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged.",
"2022-02-15"
);
insert into produto (nome,valor, descricao,data_fabricacao) values (
"Notebook",
4250.00,
"Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged.",
"2021-09-23"
);
insert into produto (nome,valor, descricao,data_fabricacao) values (
"Ventilador",
165.00,
"Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged.",
"2022-03-21"
);
insert into produto (nome,valor, descricao,data_fabricacao) values (
"Cadeira Gamer",
950.00,
"Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged.",
"2020-12-15"
);
insert into produto (nome,valor, descricao,data_fabricacao) values (
"mouse",
169.00,
"Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged.",
"2021-05-03"
);

select * from produto where valor>500;
select * from produto where valor<500;

update produto set valor=230.00, data_fabricacao = "2021-08-03" where id=8;
select * from produto;