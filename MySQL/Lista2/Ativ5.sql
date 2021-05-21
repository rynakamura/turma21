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
descrição varchar(255),
quantidade int,
cor varchar(50) not null,
categoria_id bigint not null,
foreign key (categoria_id) references tb_categoria(id),
primary key(id)
);

