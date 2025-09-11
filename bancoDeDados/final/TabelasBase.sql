/*
Grupo 01
André Santos - 01252023 
Davi Vital - 01252033 
Gabriel Muniz - 01252022 
Gabriel Pereira - 01252038 
Kauan Batista - 01252066 
Nicholas Paiva - 01252113 
*/
CREATE DATABASE sustentaTech;

USE sustentaTech;

CREATE TABLE empresa(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR(40),
responsavelLegal VARCHAR(50),
cnpj CHAR(14),
localidade VARCHAR(50)
);

INSERT INTO empresa VALUES
	(default, 'SPTECH', 'Vera Goulart', '12334500016789', 'São Paulo'),
	(default, 'Fazenda Do Juares', 'Juares Pereira', '9876000154331', 'Rio Grande do Sul'),
	(default, 'Imporio Do Maia', 'Carlos Maia', '12345678000190', 'Mato Grosso'),
	(default, 'Rancho Jesus', 'Gabriel Jesus', '98765432000155', 'Salvador'),
	(default, 'Fazenda Diamante', 'Luan Cristo', '30210987000177', 'Minas Gerais');



CREATE TABLE usuario (
idCliente INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(60),
userName VARCHAR(30),
senha VARCHAR(25) NOT NULL,
cargo VARCHAR(40),
telefone VARCHAR(20)
);

INSERT INTO usuario VALUES
	(default, 'vera.goular@sptech.school', 'Vera', '123456@cld', 'Gerente de Operações', '(11) 95765-4365'),
	(default, 'jorge.emanuel@gmail.com', 'Jorge', 'Urubu100@', 'Agronomo', '(51) 95781-3654'),
	(default, 'rodrigo.oliveira@gmail.com', 'Rodrigo', 'Filho@2', 'Administrador', '(65) 97012-3764'),
	(default, 'gabriel.jesus@gmail.com', 'Gabriel', 'Chocolate33.', 'Proprietario', '(71) 92560-9785'),
	(default, 'andre.goueva@gmail.com', 'André', 'Paodequijo@7', 'Agricultor', '(34) 96542-7889');


CREATE TABLE sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
temperatura FLOAT,
umidade FLOAT,
dtHora DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO sensor VALUES
	(default, 10, 35, default),
	(default, 40, 20, default),
	(default, 10, 10, default),
	(default, 12, 10, default),
	(default, 5, 15, default);
    

    

    
