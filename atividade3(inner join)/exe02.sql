create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
	id int auto_increment,
    categoria varchar(25) not null,
    primary key(id)
);

create table tb_pizzas(
	id int auto_increment,
    nome varchar(25) not null,
    preco decimal(5,2),
    tamanho enum("P","M","G","GG"),
    massa enum ("fina","média", "grossa"),
    categoria_id int,
    primary key(id),
    foreign key(categoria_id) references tb_categorias(id)
    );
    
    insert into tb_categorias(categoria) values ("doce");
	insert into tb_categorias(categoria) values ("salgada");
	insert into tb_categorias(categoria) values ("mista");
    insert into tb_categorias(categoria) values ("apimentada");
    insert into tb_categorias(categoria) values ("vegana");
    
    insert into tb_pizzas(nome, preco, tamanho, massa, categoria_id) values ("Baiana",25.00,"G","fina",4);
    insert into tb_pizzas(nome, preco, tamanho, massa, categoria_id) values ("Mussarela",34.00,"GG","média",2);
    insert into tb_pizzas(nome, preco, tamanho, massa, categoria_id) values ("Romeu e Julieta",32.00,"M","média",1);
    insert into tb_pizzas(nome, preco, tamanho, massa, categoria_id) values ("Palmito",36.00,"G","Grossa",5);
    insert into tb_pizzas(nome, preco, tamanho, massa, categoria_id) values ("Calabresa/Portuguesa",28.00,"M","fina",3);
    insert into tb_pizzas(nome, preco, tamanho, massa, categoria_id) values ("4 queijos",34.00,"GG","fina",2);
    insert into tb_pizzas(nome, preco, tamanho, massa, categoria_id) values ("Catupiry",25.00,"G","fina",2);
    insert into tb_pizzas(nome, preco, tamanho, massa, categoria_id) values ("Morango com Chocolate",32.00,"M","fina",1);
    
    select * from tb_pizzas where preco > 45;
    select * from tb_pizzas where preco>50 and preco < 100;
    select * from tb_pizzas where nome like "%m%" or nome like "%M%";
    select * from tb_pizzas inner join tb_categorias where tb_categorias.id = categoria_id;
     select * from tb_pizzas inner join tb_categorias where tb_categorias.id = categoria_id and tb_categorias.categoria = "doce";