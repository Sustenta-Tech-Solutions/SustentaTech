CREATE DATABASE Monitoramento;
USE Monitoramento;

CREATE TABLE RegistroMonitoramento (
    idRegistro INT PRIMARY KEY AUTO_INCREMENT,
    nomeFazenda VARCHAR(50),
    cnpjFazenda CHAR(14),
    localidadeFazenda VARCHAR(50),
    identificacaoSilo VARCHAR(20),
    temperaturaCelsius FLOAT,
    umidadePercent FLOAT
);

INSERT INTO RegistroMonitoramento (nomeFazenda, cnpjFazenda, localidadeFazenda, identificacaoSilo, temperaturaCelsius, umidadePercent) VALUES
    ('Fazenda Do Juares', '98760001543310', 'Rio Grande do Sul', 'Silo 1', 25.5, 14.2),
    ('Fazenda Do Juares', '98760001543310', 'Rio Grande do Sul', 'Silo 1', 28.1, 14.8),
    ('Fazenda Do Juares', '98760001543310', 'Rio Grande do Sul', 'Silo 2', 35.8, 19.5),
    ('Fazenda Diamante', '30210987000177', 'Minas Gerais', 'Silo 1', 22.0, 12.0),
    ('Fazenda Diamante', '30210987000177', 'Minas Gerais', 'Silo 1', 22.5, 12.3),
    ('Agro SPTECH', '12334500016789', 'São Paulo', 'Silo 3', 39.0, 22.0);

SELECT * FROM RegistroMonitoramento WHERE nomeFazenda = 'Fazenda Do Juares';

SELECT
    CONCAT('O silo ', identificacaoSilo, ' da fazenda ', nomeFazenda, ' registrou ', temperaturaCelsius, '°C e ', umidadePercent, '% de umidade.') AS RelatorioRapido
FROM RegistroMonitoramento
WHERE idRegistro = 3;

SELECT
    nomeFazenda,
    identificacaoSilo,
    temperaturaCelsius,
    umidadePercent,
    CASE
        WHEN temperaturaCelsius > 35 OR umidadePercent > 18 THEN 'PERIGO: Risco Iminente de Perda!'
        WHEN temperaturaCelsius > 28 OR umidadePercent > 15 THEN 'ALERTA: Condições Fora do Ideal'
        ELSE 'NORMAL: Condições Estáveis'
    END AS StatusCondicao
FROM RegistroMonitoramento;