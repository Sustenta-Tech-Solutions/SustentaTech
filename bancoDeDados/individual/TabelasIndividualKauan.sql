use sprint1;

create table Empresa(
	idEmpresa int primary key auto_increment,
    nomeEmpresa varchar(45),
    cnpj char(14)
);

create table Usuario(
	idUsuario int primary key auto_increment,
    nomeUsuario varchar(45),
    contato int,
    email varchar(45),
    cargo varchar(45)
);

create table Silo(
	idSilo int primary key auto_increment,
    numSilo int
);

create table Sensor(
	idSensor int primary key auto_increment,
    temperatura float,
    umidade float,
    dtHora datetime default current_timestamp
);

insert into Empresa(nomeEmpresa, cnpj) values
	('Cooperativa AgroVale', 11234567000189),
    ('Fazenda Santa Aurora', 98765432000122),
    ('Cooperativa Grão Dourado', 33210987000144),
    ('Fazenda São Bento', 12345678000190),
    ('Fazenda Recanto do Grão', 67890123000155);
    
insert into Usuario (nomeUsuario, contato, email, cargo) values 
	('Jorge Emanuel', 11976544365, 'jorge.emanuel@email.com', 'Proprietário'),
    ('Gabriel Jesus', 71925699785, 'gabriel.jesus@email.com', 'Supervisor'),
    ('Rafael Souza', 44997856543, 'rafael.souza@email.com', 'Proprietário'),
    ('Carla Mendes', 21988765432, 'carla.mendes@email.com', 'Supervisor'),
    ('Fernanda Lima', 81996543210, 'fernanda.lima@email.com', 'Proprietário');

insert into Silo (numSilo) values 
	(1),
    (2),
    (3),
    (1),
    (5);
    
insert into Sensor (temperatura, umidade) values
	(25, 49),
    (19, 35),
    (35, 70),
    (22, 30),
    (20, 13);
    

-- exibir todas as empresas
select nomeEmpresa as 'Empresa',
	cnpj as 'CPNJ'
    from Empresa;

-- exibir todos os usuarios
select nomeUsuario as 'Nome do Usuário',
	contato as 'Contato',
    email as 'E-mail',
    cargo as Cargo
    from Usuario;

-- exibir silo
select * from silo;

-- exibir sensor
select temperatura as Temperatura,
	umidade as Umidade
    from Sensor;
    
-- Apresentar nomes dos usuarios e email dos Usuarios que são Proprietários
select nomeUsuario as 'Nome do Usuário',
	email as 'E-mail',
    cargo as Cargo
    from Usuario 
		where cargo = 'Proprietário';
    
select temperatura as Temperatura,
	case
    when temperatura > 22 then 'Temperatura Alta'
	else 'Temperatura Baixa'
    end as 'Nível da Temperatura'
    from Sensor;

select umidade as Umidade,
	case
		when umidade > 20 then 'Umidade Alta'
		else 'Umidade Baixa'
    end as 'Nível da Umidade'
    from Sensor;
    
    
-- Apresentar níveis de Temperatura e Umidade
select temperatura as Temperatura,
	case
    when temperatura > 22 then 'Temperatura Alta'
	else 'Temperatura Baixa'
    end as 'Nível da Temperatura',
    umidade as Umidade,
	case
		when umidade > 20 then 'Umidade Alta'
		else 'Umidade Baixa'
    end as 'Nível da Umidade'
    from Sensor;
    




