create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
comodo varchar(50) not null,
ativo boolean not null,
promocao boolean not null,
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
produto varchar(50) not null,
valor decimal(10,2) not null,
descricao varchar(255),
quantidade int,
cor varchar(50) not null,
categoria_id bigint not null,
foreign key (categoria_id) references tb_categoria(id),
primary key(id)
);
insert tb_categoria (comodo,ativo,promocao) values ("sala",true,false);
insert tb_categoria (comodo,ativo,promocao) values ("cozinha",true,true);
insert tb_categoria (comodo,ativo,promocao) values ("banheiro",true,false);
insert tb_categoria (comodo,ativo,promocao) values ("varanda",false,false);

insert tb_produto (produto,valor,descricao,quantidade,cor,categoria_id) 
	values ("piso",32.50,"peso por m2",590,"azul fosco",3);
insert tb_produto (produto,valor,descricao,quantidade,cor,categoria_id) 
	values ("pia",88.50,"pia moderna",300,"Branco",2);
insert tb_produto (produto,valor,descricao,quantidade,cor,categoria_id) 
	values ("lustre",560.90,"perfeito para salas grandes",20,"dourado",1);
insert tb_produto (produto,valor,descricao,quantidade,cor,categoria_id) 
	values ("vaso sanitario",150.30,"vaso basico",550,"preto",3);
insert tb_produto (produto,valor,descricao,quantidade,cor,categoria_id) 
	values ("mesa",59.99,"mesa simples",1000,"marrom",4);
insert tb_produto (produto,valor,descricao,quantidade,cor,categoria_id) 
	values ("tinta",20.99,"pintura de parede",2050,"laranja",1);
insert tb_produto (produto,valor,descricao,quantidade,cor,categoria_id) 
	values ("tinta",120.89,"para paredes chamuscadas",2590,"areia",2);
    
select * from tb_produto where valor>50.00;
select * from tb_produto where valor>3 and valor<60;
select * from tb_produto where produto like "%c%";

select produto,valor,descricao,quantidade,cor,comodo,ativo,promocao 
	from  tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select produto,valor,descricao,quantidade,cor,comodo,ativo,promocao 
	from  tb_produto right join tb_categoria on tb_categoria.id = tb_produto.categoria_id
	where comodo = "cozinha";
