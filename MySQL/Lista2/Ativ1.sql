create database db_generation_game_online;
use db_generation_game_online;
create table tb_classe(
id bigint auto_increment,
nomeClasse varchar(50) not null,
escudo boolean not null,
cura boolean not null,
primary key (id)
);

create table tb_personagem(
id bigint auto_increment,
classe_id bigint not null,
nome varchar(50) not null,
vida bigint not null,
ataque bigint not null,
defesa  bigint not null,
especial_ativo boolean not null,
primary key(id),
foreign key(classe_id) references tb_classe(id)
);

insert tb_classe (nomeClasse, escudo, cura) values ("tanque", true,false);
insert tb_classe (nomeClasse, escudo, cura) values ("curandeiro", false, true);
insert tb_classe (nomeClasse, escudo, cura) values ("dano", false,false);
insert tb_classe (nomeClasse, escudo, cura) values ("suporte", true,true);

select * from tb_classe;

insert tb_personagem(nome,vida,ataque,defesa,especial_ativo,classe_id) 
	values ("NoobMaster69",100000 ,10000 ,10000 ,true,3);
insert tb_personagem(nome,vida,ataque,defesa,especial_ativo,classe_id) 
	values ("Rogerinho_destroyer",500 ,200 ,100 ,false,2);
insert tb_personagem(nome,vida,ataque,defesa,especial_ativo,classe_id) 
	values ("SeuAmigoDavid",2550, 7000,5000 ,true,1);
insert tb_personagem(nome,vida,ataque,defesa,especial_ativo,classe_id) 
	values ("Angelica2003",5500 ,9502 ,3000 ,false,3);
insert tb_personagem(nome,vida,ataque,defesa,especial_ativo,classe_id) 
	values ("Gigi_Winner99",6000 ,3020 ,3000 ,true,2);
insert tb_personagem(nome,vida,ataque,defesa,especial_ativo,classe_id) 
	values ("ViniCebolinha",8500 ,9502 ,3000 ,true,1);

select * from tb_personagem where ataque >2000;
select * from tb_personagem where defesa >1000 and defesa <2000;
select * from tb_personagem where tb_personagem.nome like "%C%";
select nome,vida,ataque,defesa,especial_ativo,nomeClasse,escudo,cura 
	from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id;
select * from tb_personagem right join tb_classe on tb_personagem.classe_id = tb_classe.id 
	where nomeClasse like "%da%";


