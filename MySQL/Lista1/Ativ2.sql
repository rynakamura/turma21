create database db_ecommerce;
use db_ecommerce;
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(10,2) not null,
categoria varchar(50),
quantidade bigint,
promocao boolean not null,
primary key (id)
);

insert tb_produtos (nome,preco,categoria,quantidade,promocao) values ("Tapete",699.99,"decoração",22,true);
insert tb_produtos (nome,preco,quantidade,promocao) values ("balde",59.99,1050,false);
insert tb_produtos (nome,preco,promocao) values ("Pizza",29.99,true);
insert tb_produtos (nome,preco,categoria,promocao) values ("Carro",20699.99,"automoveis",true);


select * from tb_produtos where preco<500;
select * from tb_produtos where preco>500;

update tb_produtos set quantidade =20 where id=1;