create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
matricula bigint not null,
nome varchar(255) not null,
nota int,
presente boolean not null,
turma int,
primary key (id)
);

insert tb_alunos (matricula,nome,nota,presente,turma) values (123,"Rogerio",10,true,22);
insert tb_alunos (matricula,nome,nota,presente,turma) values (12433,"Dogeria",8,true,21);
insert tb_alunos (matricula,nome,nota,presente,turma) values (12123,"Bianca",6,false,22);
insert tb_alunos (matricula,nome,nota,presente,turma) values (3432123,"beto",7,false,23);

select * from tb_alunos where nota >7;
select * from tb_alunos where nota <7;

update tb_alunos set nota = 5 where id = 4;