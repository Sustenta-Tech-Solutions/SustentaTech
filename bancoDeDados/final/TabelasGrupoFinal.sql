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

INSERT INTO empresa (nomeEmpresa, responsavelLegal, cnpj, localidade) VALUES
	('SPTECH', 'Vera Goulart', '12334500016789', 'São Paulo'),
	('Fazenda Do Juares', 'Juares Pereira', '9876000154331', 'Rio Grande do Sul'),
	('Imporio Do Maia', 'Carlos Maia', '12345678000190', 'Mato Grosso'),
	('Rancho Jesus', 'Gabriel Jesus', '98765432000155', 'Salvador'),
	('Fazenda Diamante', 'Luan Cristo', '30210987000177', 'Minas Gerais');

select nomeEmpresa as 'Empresa',
	cnpj as 'CPNJ'
    from Empresa;
    
SELECT concat(responsavelLegal, ' é responsavel da ', nomeEmpresa,  ' com o cnpj ', cnpj) AS Representantes from empresa;

CREATE TABLE usuario (
idCliente INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(60),
userName VARCHAR(30),
senha VARCHAR(25) NOT NULL,
cargo VARCHAR(40),
telefone VARCHAR(20)
);

INSERT INTO usuario (email, userName, senha, cargo, telefone) VALUES
	('vera.goular@sptech.school', 'Vera', '123456@cld', 'Gerente', '(11) 95765-4365'),
	('jorge.emanuel@gmail.com', 'Jorge', 'Urubu100@', 'Agricultor', '(51) 95781-3654'),
	('rodrigo.oliveira@gmail.com', 'Rodrigo', 'Filho@2', 'Gerente', '(65) 97012-3764'),
	('gabriel.jesus@gmail.com', 'Gabriel', 'Chocolate33.', 'Gerente', '(71) 92560-9785'),
	('andre.goueva@gmail.com', 'André', 'Paodequijo@7', 'Agricultor', '(34) 96542-7889');



SELECT
userName,
senha,
cargo,
CASE 
	WHEN cargo = 'Gerente' Then 'Administrador'
    ELSE 'Usuario'
    END AS 'Perfil'
	FROM usuario;



CREATE TABLE sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
temperatura FLOAT,
umidade FLOAT,
dtHora DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO sensor (temperatura, umidade) VALUES
	(10, 35),
	(40, 20),
	(10, 10),
	(12, 10),
	(5, 15);
    
    
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
        
select umidade as Umidade,
	case
	when umidade > 20 then 'Umidade Alta'
	else 'Umidade Baixa'
    end as 'Nível da Umidade'
    from sensor;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
-- Exemplo 1

    select nomeEmpresa as 'Empresa',
	cnpj as 'CPNJ'
    from empresa;
    
-- Exemplo 2    
SELECT
userName,
senha,
cargo,
CASE 
	WHEN cargo = 'Gerente' Then 'Administrador'
    ELSE 'Usuario'
    END AS 'Perfil'
	FROM usuario;
    
-- Exemplo 3
   
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
    
    
    


    

    

    
