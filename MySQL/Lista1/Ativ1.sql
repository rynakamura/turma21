create database db_RH;
use db_RH;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
cargo varchar(50) not null,
genero varchar(1),
salario decimal(10,2) not null,
primary key (id)
);

insert into tb_funcionarios (nome, idade, cargo, genero, salario) values ("Weverton",33, "goleiro","M", 600.00);
insert into tb_funcionarios (nome, idade, cargo, genero, salario) values ("G. Gomez",28, "zagueiro","M", 1000.00);
insert into tb_funcionarios (nome, idade, cargo, genero, salario) values ("Agustina",27, "zagueira","F", 2300.00);
insert into tb_funcionarios (nome, idade, cargo, genero, salario) values ("Lucas Lima",30, "meia","M", 700000.00);
insert into tb_funcionarios (nome, idade, cargo, genero, salario) values ("Dandara",24, "atacante","F", 3000.00);
delete from tb_funcionarios where id = 3;
select * from tb_funcionarios;
select * from tb_funcionarios where salario <2000;
select * from tb_funcionarios where salario >2000;

alter table tb_funcionarios change salario remuneracao decimal(10,2);