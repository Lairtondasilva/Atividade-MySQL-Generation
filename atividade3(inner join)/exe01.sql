create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id bigint auto_increment,
    nome varchar(25) not null,
    equipamento_inicial varchar (25),
    primary key (id)
);
create table tb_personagens(
	id bigint auto_increment,
    nome varchar(25) not null,
    raca enum("humano","elfo","Orc","gnomo","draconato","anão"),
    poder_de_ataque int,
    poder_de_defesa int,
    classe_id bigint not null,
    primary key (id),
    foreign key(classe_id) references tb_classes(id)
);

insert into tb_classes(nome,equipamento_inicial) values("guerreiro","espada longa");
insert into tb_classes(nome,equipamento_inicial) values ("arqueiro", "arco simples");
insert into tb_classes (nome,equipamento_inicial) values ("mago","cajado simples");
insert into tb_classes (nome,equipamento_inicial) values ("ladino","adaga");
insert into tb_classes (nome,equipamento_inicial) values ("paladino","machado");

insert into tb_personagens(nome,raca,poder_de_ataque,poder_de_defesa,classe_id) values ("Arthur","humano",2250,2800,1);
insert into tb_personagens(nome,raca,poder_de_ataque,poder_de_defesa,classe_id) values ("Gabriela","elfo", 2800,1800,2);
insert into tb_personagens(nome,raca,poder_de_ataque,poder_de_defesa,classe_id) values ("Frodo","anão",2450,3500,1);
insert into tb_personagens(nome,raca,poder_de_ataque,poder_de_defesa,classe_id) values ("Diego","humano", 2000,2100,4);
insert into tb_personagens(nome,raca,poder_de_ataque,poder_de_defesa,classe_id) values ("respel","gnomo",1975,2200,3);
insert into tb_personagens(nome,raca,poder_de_ataque,poder_de_defesa,classe_id) values ("merlin","draconato", 2500,1800,3);
insert into tb_personagens(nome,raca,poder_de_ataque,poder_de_defesa,classe_id) values ("samandriel","elfo",2600,2000,2);
insert into tb_personagens(nome,raca,poder_de_ataque,poder_de_defesa,classe_id) values ("Roussel","Orc", 2500,3200,1);

select * from tb_personagens where poder_de_ataque > 2000;
select * from tb_personagens where poder_de_defesa < 2000 and poder_de_defesa>1000;
select * from tb_personagens where nome like "%c%";
select * from tb_personagens inner join tb_classes where tb_personagens.classe_id = tb_classes.id;
select * from tb_personagens inner join tb_classes where tb_personagens.classe_id = tb_classes.id and tb_classes.nome = "arqueiro";
