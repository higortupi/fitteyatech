-- Nome: Guilherme Neris RA: 01241157

-- banco de dados da empresa Fitteya Tech

CREATE DATABASE FitteyaTech;
USE FitteyaTech;

-- Tabela do nosso Cliente
CREATE TABLE EmpresaTransportadora(
idMotorista INT PRIMARY KEY AUTO_INCREMENT,
nomeMotorista VARCHAR(50),
carroTransporte VARCHAR(30),
placaCarro CHAR(8),
nomeTransportadora VARCHAR(50)
);

-- tabela de carga dos trigos
CREATE TABLE LoteCarga(
	idCarga INT PRIMARY KEY AUTO_INCREMENT,
    origem VARCHAR(60),
    destino VARCHAR(60),
    dataProducao DATE,
    limiteTempoTransporte varchar(20),
    pesoLote INT
);

-- tabela do usuario que vai utilizar a aplicação 
CREATE TABLE Usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(60),
senha VARCHAR(9),
cargo VARCHAR(40) CHECK (cargo IN('Administrador','Visitante')), -- Privilegios de usuario no site.
emailUsuario VARCHAR(60)
)auto_increment =1000;

-- tabela com os registros de temperatura e umidade
CREATE TABLE Registro(
idRegistro INT PRIMARY KEY AUTO_INCREMENT,
temperatura VARCHAR(4), -- coloquei como varchar mas não é o prototipo final.
umidade VARCHAR(4) -- coloquei como varchar mas não é o prototipo final.
);

-- inserindo valores nas tabelas para teste de banco de dados

-- tabela EmpresaTransportadora
INSERT INTO EmpresaTransportadora VALUES
(DEFAULT, 'Robson', 'Caminhão da Mercedes', 'BR-12345', 'Trigos Fast'),
(DEFAULT, 'Mauricio', 'Caminhão da ford', 'BR-12900', 'Trigão Agora'),
(DEFAULT, 'Claudio', 'Caminhão da Mercedes', 'BR-19715', 'Trigos sobre rodas');

-- tabela LoteCarga
INSERT INTO LoteCarga VALUES
(DEFAULT, 'Minas Gerais', 'São Paulo', '2024-02-25', '12 Horas', 35),
(DEFAULT, 'Rio de Janeiro', 'São Paulo', '2024-06-12', '9 Horas', 40),
(DEFAULT, 'São Paulo', 'Curitiba', '2024-12-17', '99 Horas', 20);

-- tabela Usuario
INSERT INTO Usuario VALUES 
(DEFAULT, 'Guilherme', 'Senha1234','Visitante','guilherme@email.com'),
(DEFAULT, 'Rian', 'Senha4321','Administrador','rian@email.com'),
(DEFAULT, 'Rodolfo', 'Senha6789','Administrador','rodolfo@email.com');

-- tabela Registro
INSERT INTO Registro VALUES
(DEFAULT, '20°C', '12%'),
(DEFAULT, '8°C', '15%'),
(DEFAULT, '27°C', '9%');

-- Seleção deral de 3 tabelas (EmpresaTransportadora, LoteCarga, Registro)
SELECT*FROM EmpresaTransportadora, LoteCarga, Registro; 

-- Consulta dos usuarios da plataforma 
SELECT*FROM Usuario;