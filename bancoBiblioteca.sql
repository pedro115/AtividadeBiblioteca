create database biblioteca;

use biblioteca;
create table aluno (
	id bigint not null auto_increment,

	matricula varchar (15),
    nome varchar (255),
    cpf varchar (11),
    dataNascimento date,
    endereco varchar (255),
    
    primary key (id)
);

create table livro (
	id bigint not null auto_increment,
	
    titulo varchar (255),
    autor varchar (255),
    editora varchar (255),
    anoPublicacao date,
    edicao int,
    
    primary key (id)
);
create table emprestimo (
	id bigint not null auto_increment,
    livro bigint,
    aluno bigint,
    dataEmprestimo date,
    
    primary key (id),
    foreign key (aluno) references aluno (id),
    foreign key (livro) references livro (id)
);