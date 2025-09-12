-- Criando o banco de dados 
CREATE DATABASE controle;

-- Utilizando o banco de dados
USE controle;

-- Criando a tabela
CREATE TABLE dadoSilo (
id INT PRIMARY KEY AUTO_INCREMENT,
proprietario VARCHAR(30),
cnpjProprietario CHAR(14),
logradouro VARCHAR(30),
temperatura FLOAT,
umidade FLOAT,
capacidade INT
);

-- Inserindo dados na tabela
INSERT INTO dadoSilo VALUES
	(default, 'Anderson Silva', '11111111111111', 'Sorocaba', '14.7', '12.1', 3000),
	(default, 'Britney Spears', '22222222222222', 'Houston', '15.2', '11.8', 2900),
	(default, 'Charles Brown', '33333333333333', 'Itu', '14.9', '12.3', 2800),
	(default, 'Dwyane Wade', '44444444444444', 'Miami', '15.0', '13.1', 2700),
	(default, 'Ester Esposito', '55555555555555', 'Madrid', '14.6', '12.5', 3100),
	(default, 'Fatima Bernardes', '66666666666666', 'São Paulo', '14.5', '13.6', 3200);
 
-- Exibindo os dados da tabela 
SELECT * FROM dadoSilo;

-- Exibindo alguns dados de forma concatenada
SELECT
    CONCAT('O silo de ', proprietario, ' (ID', id, ') está com temperatura de ', temperatura, ' ºC e com umidade de ', umidade, '%' ) AS RelatorioRapido
FROM dadoSilo
WHERE id = 6;

-- Exibindo alguns dados com título dependendo da condição
SELECT
    proprietario AS 'Silo de:',
    temperatura,
    umidade,
    CASE
		WHEN temperatura > 15 AND umidade <= 13 THEN 'Temperatura acima do ideal!'
        WHEN temperatura < 15 AND umidade > 13 THEN 'Umidade acima do ideal!'
        WHEN temperatura > 15 AND umidade > 13 THEN 'Temperatura e umidade acima do ideal!'
        ELSE 'Temperatura e umidade nas condições ideais!'
    END AS Condição
FROM dadoSilo;

-- Limpando os dados da tabela
TRUNCATE TABLE dadoSilo;





