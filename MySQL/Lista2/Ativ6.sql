create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tema varchar(50) not null,
ativo boolean not null,
requisitos varchar(255),
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(155)not null,
preco decimal (10,2)not null,
descricao varchar(255)not null,
promocao boolean not null,
horas int not null,
categoria_id bigint not null,
foreign key(categoria_id)references tb_categoria(id),
primary key(id)
);

insert tb_categoria (tema,ativo,requisitos) values ("Java",true,"Logica de programação");
insert tb_categoria (tema,ativo,requisitos) values ("JavaScript",true,"HTML,CSS,Logica de programação");
insert tb_categoria (tema,ativo,requisitos) values ("Logica de programacao",true,"nenhum");
insert tb_categoria (tema,ativo,requisitos) values ("Python",false,"Logica de programação");

insert tb_produto (nome,preco,descricao,promocao,horas,categoria_id) 
	values ("Portugol",29.99,"introdução a programação", false, 20,3);
insert tb_produto (nome,preco,descricao,promocao,horas,categoria_id) 
	values ("Intro Python",59.99,"introdução a linguagem", true, 60,4 );
insert tb_produto (nome,preco,descricao,promocao,horas,categoria_id) 
	values ("Java Completo",209.99,"Curso completo Java", true, 150,1 );
insert tb_produto (nome,preco,descricao,promocao,horas,categoria_id) 
	values ("Java introdução",59.99,"introdução a linguagem", true, 45,1 );
insert tb_produto (nome,preco,descricao,promocao,horas,categoria_id) 
	values ("Revisão HTML e CSS",49.99,"base para a linguagem", false, 20,2 );
insert tb_produto (nome,preco,descricao,promocao,horas,categoria_id) 
	values ("JavaScript completo",359.99,"curso completo JS", false, 240,2 );
insert tb_produto (nome,preco,descricao,promocao,horas,categoria_id) 
	values ("Teoria da Logica",89.99,"introdução a programação", true, 25,3 );
    
select * from tb_produto where preco >50.00;
select * from tb_produto where preco>3 and preco < 60;
select * from tb_produto where nome like "%j%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select nome,preco,descricao,promocao,horas,tema,ativo,requisitos
	from tb_produto right join tb_categoria on  tb_produto.categoria_id = tb_categoria.id where 
	tema = "Java";