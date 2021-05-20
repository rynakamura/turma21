select @@version;
-- criar banco de dados
create database db_quitanda;
-- acessar o banco
use db_quitanda;
-- criar tabela
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco float not null,
primary key (id)

);
-- busca de dados (* é para trazer todos os dados)
select * from tb_produtos;
-- inserindo produtos
insert into tb_produtos (nome,preco) values ("laranja",2);
-- atualizar
update tb_produtos set preco = 4 where id =2;

delete from tb_produtos where id = 2;
-- alterar tabela
alter table tb_produtos
add descricao varchar (255);
alter table tb_produtos change descricao descricao_produto varchar(255);
-- deletar coluna
alter table tb_produtos
drop column descricao_produtos;
-- deletar tabela
drop table tb_produto;
-- deletar database
drop database db_quitanda;