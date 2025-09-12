CREATE DATABASE sustentaTech;
USE sustentaTech;

CREATE TABLE empresa(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR(45),
responsavelEmpresa VARCHAR(45),
cnpj CHAR(14),
localidade VARCHAR(45)
);

INSERT INTO empresa VALUES 
	(default, 'LifeSoja', 'Carlos Augusto', '17485927394758', 'Rio de Janeiro'),
	(default, 'AgroSP', 'Regina Santiago', '14585923394709', 'São Paulo'),
	(default, 'Cooperacorp', 'Cristiano Santos', '19585863392707', 'Paraná');
    
CREATE TABLE usuarios(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nomeResponsavel VARCHAR(45),
email VARCHAR(45),
nickName VARCHAR(20),
empresa VARCHAR(20),
cargo VARCHAR(20)
) AUTO_INCREMENT = 10;

INSERT INTO usuarios VALUES
	(default, 'Carlos Santos', 'carlosadm@lifesoja.com', 'CarlosADM', 'LifeSoja', 'Administrador'),
	(default, 'Gustavo Henrique', 'gustavo004@hotmail.com', 'GustavinhoAgro', 'AgroSP', 'Diretor'),
	(default, 'Matheus Silva', 'matheussuporte@cooperacorp.com', 'MatheusCorp', 'Cooperacorp', 'Suporte');
    
CREATE TABLE sensor (
idSensor INT,
valorUmidade FLOAT,
valorTemperatura FLOAT);

-- SELECT TABELA 01

INSERT INTO sensor VALUES 
	(1, '23', '45'),
	(2, '10', '14'),
	(3, '30', '22'),
	(4, '13', '15'),
	(5, '4', '9');
    
SELECT * FROM empresa;

SELECT CONCAT('A empresa ', nomeEmpresa, ' tem como responsável legal: ', responsavelEmpresa) AS 'Empresa e responsável' FROM empresa;

SELECT CONCAT('A empresa ', nomeEmpresa, ' está lozalizada: ', localidade) AS 'Localidade da empresa' FROM empresa;

SELECT responsavelEmpresa AS 'Rsponsavel da empresa' FROM empresa WHERE idEmpresa = 3;



-- SELECT TABELA 02

SELECT CONCAT(nomeResponsavel, ' é dono do usuário ', nickName, '!') AS 'Donos dos usuários' FROM usuarios;

SELECT email AS 'Email de contato' FROM usuarios
	WHERE idUsuario = 12;
    
SELECT * FROM usuarios WHERE cargo LIKE 'Suporte';

SELECT * FROM usuarios WHERE empresa LIKE 'A%';



-- SELECT TABELA 03

SELECT * FROM sensor;

SELECT CONCAT('O sensor de ID ', idSensor, ' esta com a temperatura de ', temperatura, '°C.') AS 'Temperatura atual do sensor'
	FROM sensor
    WHERE idSensor = 4;
     
SELECT valorTemperatura AS 'Temperatura dentro do Silo', 
	CASE
    WHEN valorTemperatura < 18 THEN 'Temperatura baixa'
    ELSE 'Temperatura alta'
    END AS 'Nivel da temperatura'
    FROM sensor;
    
    SELECT valorUmidade AS 'Umidade dentro do Silo', 
	CASE
    WHEN valorUmidade <= 13 THEN 'Umidade baixa'
    ELSE 'Umidade alta'
    END AS 'Nivel de Umidade'
    FROM sensor;
    



    
