create database db_quitanda;

use db_quitanda;

create table produtos (
	id bigint auto_increment,
    nome varchar(25) not null,
	tipo enum ("legume","fruta","verdura"),
    preco decimal (4,2),
    estoque_caixas int,
    primary key (id)
);

insert into produtos(nome,tipo,preco,estoque_caixas) values ("maçã","fruta",8.00,4);
insert into produtos(nome,tipo,preco,estoque_caixas) values ("pêra","fruta",11.00,3);
insert into produtos(nome,tipo,preco,estoque_caixas) values ("uva","fruta",10.00,6);
insert into produtos(nome,tipo,preco,estoque_caixas) values ("banana","fruta",4.50,4);
insert into produtos(nome,tipo,preco,estoque_caixas) values ("chuchu","legume",4.50,7);
insert into produtos(nome,tipo,preco,estoque_caixas) values ("pepino","legume",6.00,4);
insert into produtos(nome,tipo,preco,estoque_caixas) values ("pimentão","legume",5.00,9);
insert into produtos(nome,tipo,preco,estoque_caixas) values ("abrobinha","legume",7.00,7);
insert into produtos(nome,tipo,preco,estoque_caixas) values ("alface","verdura",12.00,7);
insert into produtos(nome,tipo,preco,estoque_caixas) values ("repolho","verdura",6.00,4);
insert into produtos(nome,tipo,preco,estoque_caixas) values ("couve","verdura",5.00,9);


select * from produtos where tipo like "%fruta%";
select * from produtos where tipo = "legume";

update produtos set nome = "abacate", preco = 5.60 where id=2;

set sql_safe_updates = 0;
delete from produtos where tipo = "verdura";
