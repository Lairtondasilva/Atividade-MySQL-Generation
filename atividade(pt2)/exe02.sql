create database db_brecho;

use db_brecho;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(50) not null,
    preco decimal(6,2),
    cor varchar(20),
    tipo enum("camisa","short","tênis","saia","vestidos"),
    categoria enum("masculino","feminino","corrida","esporte","casual"),
    primary key(id)
);

insert into tb_produtos(nome,preco,cor,tipo,categoria) values ("Tênis court vision 3",169.00, "preto","tênis","esporte");
insert into tb_produtos(nome,preco,cor,tipo,categoria) values ("Tênis adidas breaknet",145.00, "branco","tênis","casual");
insert into tb_produtos(nome,preco,cor,tipo,categoria) values ("Camisa Dry Mescla vinho",49.90, "vinho","camisa","masculino");
insert into tb_produtos(nome,preco,cor,tipo,categoria) values ("Simples Ocasional camiseta",42.00, "branco","tênis","feminino");
insert into tb_produtos(nome,preco,cor,tipo,categoria) values ("Simples e Elegante saia",38.90, "preto","saia","feminino");
insert into tb_produtos(nome,preco,cor,tipo,categoria) values ("Vestido Decote",39.99, "florido","vestidos","feminino");
insert into tb_produtos(nome,preco,cor,tipo,categoria) values ("Tubo Simples Boho Vestido",89.95, "vinho","vestidos","feminino");
insert into tb_produtos(nome,preco,cor,tipo,categoria) values ("Camiseta Premium",40.90, "cinza","camisa","masculino");

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco < 50;
select * from tb_produtos where id = 2;

update tb_produtos set preco= 79.00 where id=7;

delete from tb_produtos where id =2;
delete from tb_produtos where id = 3;



