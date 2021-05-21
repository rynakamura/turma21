create database db_farmacia_do_bem;
use db_farmacia_do_bem;
create table tb_categoria(
id bigint auto_increment,
categoria varchar(50) not null,
promocao boolean not null,
desconto_convenio boolean not null,
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
generico boolean,
nome varchar(50) not null,
descricao varchar(255) not null,
valor decimal (10,2) not null,
frete decimal (10,2) not null,
categoria_id bigint not null,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert tb_categoria (categoria,promocao,desconto_convenio) values ("Medicamentos", false, true);
insert tb_categoria (categoria,promocao,desconto_convenio) values ("Dermocosméticos", true, false);
insert tb_categoria (categoria,promocao,desconto_convenio) values ("Nutrição", true,true);
insert tb_categoria (categoria,promocao,desconto_convenio) values ("Beleza", true,false);

insert tb_produto (generico, nome,descricao,valor,frete,categoria_id) 
	values (true, "antialergico","para coceira", 8.99,5.99, 1 );
insert tb_produto (generico, nome,descricao,valor,frete,categoria_id) 
	values (false, "doril", "acaba com as dores", 15.99,2.99, 1 );
insert tb_produto (generico, nome,descricao,valor,frete,categoria_id) 
	values (true, "gel de limpeza","para limpeza da pele", 59.99,5.00, 2 );
insert tb_produto (generico, nome,descricao,valor,frete,categoria_id) 
	values (false, "vitamix", "vitamina C", 38.99,2.99, 3 );
insert tb_produto (generico, nome,descricao,valor,frete,categoria_id) 
	values (true, "blush","produto de beleza", 19.55,6.20, 4 );
insert tb_produto (generico, nome,descricao,valor,frete,categoria_id) 
	values (false,"Whey", "Proteina", 57.99,9.99, 3 );
insert tb_produto (generico, nome,descricao,valor,frete,categoria_id) 
	values (true, "vitamina","vitamina c", 26.99,2.99, 3 );
insert tb_produto (generico, nome,descricao,valor,frete,categoria_id) 
	values (true, "sérum","anti idade",  38.99,0.99, 2 );
    
select * from tb_produto where valor >50.00;
select * from tb_produto where valor >3.00 and valor <60.00;
select * from tb_produto where nome like "%B%";
select categoria,promocao,desconto_convenio,generico, nome,descricao,valor,frete
	from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select categoria,promocao,desconto_convenio,generico, nome,descricao,valor,frete
	from tb_produto right join tb_categoria on tb_produto.categoria_id = tb_categoria.id where generico = true;
    
