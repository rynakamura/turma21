create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categoria(
id bigint auto_increment,
tamanho varchar(50) not null,
promocao boolean not null,
frete decimal(10,2),
primary key (id)
);

create table tb_pizza(
id bigint auto_increment,
dois_sabores boolean not null,
recheio varchar(50) not null,
recheio2 varchar(50),
borda varchar(50) not null,
valor decimal (10,2) not null,
categoria_id bigint not null,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert tb_categoria (tamanho,promocao,frete) values ("Pequeno", false, 9.99);
insert tb_categoria (tamanho,promocao,frete) values ("Médio", false, 5.99);
insert tb_categoria (tamanho,promocao,frete) values ("Grande", true, 0.00);
insert tb_categoria (tamanho,promocao,frete) values ("Quadrada", true, 5.99);

insert tb_pizza (dois_sabores, recheio,recheio2,borda,valor,categoria_id) 
	values (true, "calabresa","frango", "normal", 28.99, 2 );
insert tb_pizza (dois_sabores, recheio,borda,valor,categoria_id) 
	values (false, "calabresa", "recheada com cheddar", 28.99, 2 );
insert tb_pizza (dois_sabores, recheio,recheio2,borda,valor,categoria_id) 
	values (true, "baiana","frango", "recheada com catupiry", 39.99, 3 );
insert tb_pizza (dois_sabores, recheio,borda,valor,categoria_id) 
	values (false, "moda da casa", "normal", 38.99, 4 );
insert tb_pizza (dois_sabores, recheio,recheio2,borda,valor,categoria_id) 
	values (true, "calabresa","frango", "recheada com cheddar", 19.99, 1 );
insert tb_pizza (dois_sabores, recheio,borda,valor,categoria_id) 
	values (false,"frango", "normal", 32.99, 4 );
insert tb_pizza (dois_sabores, recheio,recheio2,borda,valor,categoria_id) 
	values (true, "moda da casa","frango", "fina", 26.99, 1 );
insert tb_pizza (dois_sabores, recheio,recheio2,borda,valor,categoria_id) 
	values (true, "calabresa","brocolis", "fina", 38.99, 3 );
    
select * from tb_pizza where valor >45.00;
select * from tb_pizza where valor >29.00 and valor <60.00;
select * from tb_pizza where recheio like "%c%" or recheio2 like "%c%";
select dois_sabores,recheio,recheio2,borda,valor, tamanho, promocao, frete 
	from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;
select dois_sabores,recheio,recheio2,borda,valor, tamanho, promocao, frete 
	from tb_pizza right join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where tamanho = "Médio";
    
