-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
CREATE DATABASE acquatec;

USE acquatec;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    cpf char(11),
	email VARCHAR(50),
	senha VARCHAR(50)
);


CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

/* para workbench - local - desenvolvimento */
-- Tabela Pessoa - Arma

create table Personagem(
idPersonagem int primary key auto_increment,
nome varchar(45),
dfataNasc date,
cpf char(14)
);

create table Arma(
idArma int primary key auto_increment,
nome varchar(45),
dataCriacao date,
tipo varchar(45),
fkPessoa int,
foreign key (fkPessoa) references Pessoa(idPessoa)
)auto_increment = 100;


select * from usuario;

















insert into Pessoa values (null,'Tommy Shelby','1959-08-03','20125597643'),
                          (null,'Arthur Shelby','1961-04-19','44656649838'),
                          (null,'Polly Gray','1949-02-15','80932211748'),
                          (null,'Michael Gray','1970-05-28','33699822348'),
                          (null,'Jonh Shelby','1963-09-26','40017962149'),
                          (null,'Finn Shelby','1989-08-11','70068849851'),
                          (null,'Grace Burgess','1962-01-12','11569237033');

insert into Arma values(100,'webley 455 mk iv','1887-07-05','Revólver de serviço','1'),
					   (101,'webley 455 mk vi','1887-01-06','Revólver de serviço','2'),
                       (102,'mauser c96 broomhandle','1895-07-04','Pistola','3'),
                       (103,'FN M1900','1896-02-08','pistola semiautomática','4'),
                       (104,'FN Model 1910','1910-03-01','Pistola semiautomática','5'),
                       (105,'Luger P08','1898-09-05','pistola semiautomática','6'),
					   (106,'Lee–Enfield','1895-01-21','Fuzil','7');



/* em nossa regra de negócio, um aquario tem apenas um sensor */
/*
create table aquario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(300)
);
*/
/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

/*
create table medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT,
	FOREIGN KEY (fk_aquario) REFERENCES aquario(id)
);
*/

/* para sql server - remoto - produção */
/*CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);
*/

/*
CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
);
*/


create table aquario (
/* em nossa regra de negócio, unm aquario tem apenas um sensor */
	id INT PRIMARY KEY IDENTITY(1,1),
	descricao VARCHAR(300)
);

/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT FOREIGN KEY REFERENCES aquario(id)
);
