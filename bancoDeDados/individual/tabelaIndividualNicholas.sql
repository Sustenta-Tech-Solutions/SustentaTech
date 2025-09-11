/*
Bancoi de dados 
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

SELECT nomeEmpresa AS Marca FROM empresa;

SELECT concat(responsavelLegal, ' é responsavel da ', nomeEmpresa,  ' com o cnpj ', cnpj) AS Representantes from empresa;
    
CREATE TABLE usuario (
idCliente INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(60),
userName VARCHAR(30),
senha VARCHAR(25) NOT NULL,
cargo VARCHAR(40),
telefone VARCHAR(20)
);

INSERT INTO usuario VALUES
	(default, 'vera.goulart@sptech.school', 'Vera', '123456@cld', 'Gerente', '(11) 95765-4365'),
	(default, 'jorge.emanuel@gmail.com', 'Jorge', 'Urubu100@', 'Agronomo', '(51) 95781-3654'),
	(default, 'rodrigo.oliveira@gmail.com', 'Rodrigo', 'Filho@2', 'Gerente', '(65) 97012-3764'),
	(default, 'gabriel.jesus@gmail.com', 'Gabriel', 'Chocolate33.', 'Agronomo', '(71) 92560-9785'),
	(default, 'andre.goueva@gmail.com', 'André', 'Paodequijo@7', 'Gerente', '(34) 96542-7889');

SELECT
userName,
senha,
cargo,
CASE 
	WHEN cargo = 'Gerente' Then 'Administrador'
    WHEN cargo = 'Agronomo' then 'Usuario'
    END AS 'Perfil'
	FROM usuario;
    
SELECT
userName AS Nome,
email,
cargo,
telefone,
CASE
	WHEN cargo = 'Gerente' then
		concat(userName, ' é ocupa o cargo de gerencia e as formas de contato dela são: ', email, telefone) 
    WHEN cargo = 'Agronomo' then 
		concat(userName, ' é ocupa o cargo de agronomo e as formas de contato dela são: ', email, telefone) 
        END AS 'Contato'
        FROM usuario;
    
    

CREATE TABLE sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
temperatura FLOAT,
umidade FLOAT,
dtHora DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO sensor VALUES
	(default, 13, 8, default),
	(default, 23, 25, default),
	(default, 13, 30, default),
	(default, 12, 10, default),
	(default, 5, 8, default);
     
    
    

    SELECT 
    temperatura,
    umidade,
    CASE 
		WHEN umidade >= 13 Then 'Desfavorável'
		WHEN umidade < 13 Then 'Favoravel'
		WHEN temperatura >= 15 THEN 'Desfavorável'
		WHEN temperatura < 15 THEN 'Favorável'
        END AS 'Situação'
        FROM sensor;
    
