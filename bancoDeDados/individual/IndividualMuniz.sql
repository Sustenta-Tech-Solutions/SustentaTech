CREATE DATABASE muniztech;

USE muniztech;

CREATE TABLE empresa (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40) NOT NULL,
cnpj VARCHAR(20),
logradouro VARCHAR(40) NOT NULL,
contato INT, 
email VARCHAR(40)
);

insert into empresa(nome,cnpj,logradouro,contato,email) values
('Sustentatech','84.085.059/0001-10','Rua batista 193','932679123','sustentatech@email.com'),
('Muniztec','09.840.178/0001-15','Rua luana 13','932273323','munitec@email.com'),
('Burlatech','94.326.300/0001-09','Rua anadrinha 293','955679123','burlatech@email.com'),
('Lallabil','66.244.897/0001-07','Rua guaranin','944679123','lallabil@email.com');

select * from empresa;
select * from empresa where idEmpresa = 3;
select nome from empresa;
select cnpj from empresa where nome like 'b%';
select * from empresa order by nome;
desc empresa;
update empresa set nome = 'tetech', email = 'tetech@email.com' where idEmpresa = 2;
alter table empresa rename column logradouro to endereco;


drop table empresa;

CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(40),
temperatura INT,
umidade INT,
horaEdata DATETIME DEFAULT CURRENT_TIMESTAMP
);

insert into sensor(tipo, temperatura, umidade) values
('DHT11','59','23'),
('DHT11','13','15'),
('DHT','10','12');

select * from sensor;


CREATE TABLE serviço (
idServico INT PRIMARY KEY AUTO_INCREMENT,
tipos VARCHAR (30),
dataEhora DATETIME DEFAULT CURRENT_TIMESTAMP,
locall VARCHAR (40)
); 

CREATE TABLE material (
idMaterial INT PRIMARY KEY AUTO_INCREMENT,
ferramentas VARCHAR(40),
compras VARCHAR(50),
descarte VARCHAR(50)
);



