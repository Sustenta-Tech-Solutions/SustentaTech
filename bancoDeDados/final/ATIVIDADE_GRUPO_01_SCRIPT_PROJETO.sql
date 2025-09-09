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
	(default, 'clodoaldo.almeida@sptech.school', 'Clodoaldo', '123456@cld', 'Gerente de Operações', '(11) 9765-4365'),
	(default, 'jorge.emanuel@gmail.com', 'Jorge', 'Urubu100@', 'Agronomo', '(51) 96578-3654'),
	(default, 'rodrigo.oliveira@gmail.com', 'Rodrigo', 'Filho@2', 'Administrador', '(65) 97462-3659'),
	(default, 'gabriel.jesus@gmail.com', 'Gabriel', 'Chocolate33.', 'Proprietario', '(71) 9256-9785'),
	(default, 'andre.goueva@gmail.com', 'André', 'Paodequijo@7', 'Agricultor', '(34) 96542-7889');

CREATE TABLE sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
temperatura FLOAT,
umidade FLOAT,
dtHora DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO sensor VALUES
	(default, 37, 35, default),
	(default, 23, 25, default),
	(default, 13, 30, default),
	(default, 12, 10, default),
	(default, 20, 15, default);
    
CREATE TABLE recursos(
	idRecursos INT PRIMARY KEY AUTO_INCREMENT,
    qtSilos INT,
    qtSensor INT);
    
INSERT INTO recursos VALUES 
	(default, 1, 5),
	(default, 5, 25),
	(default, 25, 125);
    
    
-- EXIBIR DADOS DA TABELA EMPRESA
SELECT * FROM empresa;

-- EXIBIR NOME DOS RESPONSÁVEIS
SELECT responsavelLegal AS CEO FROM empresa;

-- EXIBIR EMPRESAS E O RESPONSAVEL LEGAL E A LOCALIDADE 
SELECT CONCAT(nomeEmpresa, ' tem como diretora acadêmica ', responsavelLegal, ', sendo localizada em ', localidade, '!') AS 'Responsável da empresa' 
	FROM empresa
    WHERE idEmpresa = 1;



-- EXIBIR DADOS DA TABELA USUÁRIO  
SELECT  * FROM usuario;
    
-- EXIBIR OS EMAILS DE CONTATO DOS USUÁRIOS    
SELECT email AS 'Email de contato' FROM usuario
	WHERE idCliente = 4;
    
-- EXIBIR O NOME DE USUÁRIO E O CARGO DELE    
SELECT CONCAT(userName, ' é ', cargo, '!') AS 'Cargo do usuário'
	FROM usuario
    WHERE idCliente = 2;
    
-- EXIBIR DADOS DO CARGO "PROPRIETÁRIO"
SELECT * FROM usuario WHERE cargo LIKE 'Proprietario';
    
    
    
-- EXIBIR DADOS DA TABELA SENSOR    
SELECT * FROM sensor;

-- EXIBIR A TEMPERATURA ATUAL DE UM DETERMINADO SENSOR
SELECT CONCAT('O sensor de ID ', idSensor, ' esta com a temperatura de ', temperatura, '°C.') AS 'Temperatura atual do sensor'
	FROM sensor
    WHERE idSensor = 4;
    
-- EXIBIR O NÍVEL DE TEMPERATURA DOS SENSORES    
SELECT temperatura AS 'Temperatura', 
	CASE
    WHEN temperatura < 20 THEN 'Temperatura baixa'
    ELSE 'Temperatura alta'
    END AS 'Nivel da temperatura'
    FROM sensor;
    
    
    
-- EXIBIR DADOS DA TABELA RECURSOS
SELECT * FROM recursos;

-- EXIBIR DADOS ONDE A QUANTIDADE DE SILOS É MAIOR QUE 10 
SELECT * FROM recursos WHERE qtSilos > 10;

-- EXIBIR A QUANTIDADE DE SENSORES DE UM DETERMINADO ID
SELECT CONCAT('A quantidades de sensores do ID ', idRecursos, ' é de: ', qtSensor) AS 'Sensores'
FROM recursos
WHERE idRecursos = 2;



    

