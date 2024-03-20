create database projetoPesquisaInovacao;
use projetoPesquisaInovacao;

-- Tabela da transportadora
create table empresaTransportadora(
idMotorista int primary key auto_increment,
nomeMotorista varchar(50),
veiculoTransporte varchar(30),
placaCarro varchar(30) not null,
nomeTransportadora varchar(50)
);

-- Tabela da carga
create table loteCarga(
	idCarga int primary key auto_increment,
    origem varchar(60),
    destino varchar(60),
    dataProducao varchar(60),
    dataTransporte datetime,
    pesoLote int
);

-- tabela do usuario do site
create table usuario(
idUsuario int primary key auto_increment,
nome varchar(60) not null,
senha varchar(60) not null,
cargo varchar(60),
emailUsuario varchar(60) not null
)auto_increment =1000;

-- tabela dos dados dos sensores
create table sensores(
idSensor int primary key auto_increment,
temperatura decimal(2,2) not null,
umidade int not null,
dataHora datetime,
Funcionando char(3), 
constraint chkFuncionando check(Funcionando in('sim','não'))
) auto_increment = 1000;

insert into empresaTransportadora values
(default, 'Julius Carmão', 'Caminhão', 'GHAS-245', 'AzulCarga'),
(default, 'Pablo Escobar', 'Caminhão', 'LQUR-947', 'Rodovale'),
(default, 'Enrico Pucci', 'Navio', 'GHAS-056', 'AzulCarga'),
(default, 'Giorno Giovanna', 'Navio', 'BFOA-037', 'F-três'),
(default, 'Bruno Bucciarati', 'Avião', 'OWNV-286', 'Rodovale'),
(default, 'Jotaro Kujo', 'Avião', 'AVBO-660', 'F-três');

alter table empresaTransportadora modify column placaCarro varchar(20) not null;

insert into loteCarga values
(default, 'Paranapiacaba', 'Piraporinha', '2024-03-19 16:00:00', '2024-04-10 12:00:00', 1000),
(default, 'Itaquera', 'Indaiatuba', '2024-02-14 14:30:00', '2024-02-17 05:00:00', 125),
(default, 'Matão', 'Santo Ándre', '2024-04-15 18:30:00', '2024-04-20 10:00:00', 230),
(default, 'Consolação', 'Tamanduateí', '2024-03-01 05:00:00', '2024-03-01 19:00:00', 500);

alter table loteCarga modify column dataProducao datetime;
alter table loteCarga modify column destino varchar(100) not null;
alter table loteCarga modify column origem varchar(100) not null;

insert into usuario values
(default, 'Kakyoin', '1234', 'Estagiário', 'rosquinha@gmail.com'),
(default, 'Hendyhiorrara', '13874J', 'Influenciador', 'hiorrarahenry@gmail.com'),
(default, 'Jubileu', '202407310HG', 'Administrador', 'rpg@outlook.com'),
(default, 'Yagami', 'd0n0tR34dmyN4m3B4ckw4rds', 'Motorista', 'lightkira@outlook.com'),
(default, 'Kakarotto', 'senha', 'RH', 'sayajingoku@hotmail.com'),
(default, 'Felipe', '6fy3g4hfg2vh4bf5g2h4', 'Técnico em manutenção', 'LopesRocha@hotmail.com');

alter table sensores modify column temperatura varchar(6) not null default 'ERROR';
alter table sensores modify column umidade varchar(6) not null default 'ERROR';

insert into sensores values
(default, 15.20, 13, '2024-03-19 16:45:00', 'sim'),
(default, 15.50, 17, '2024-03-19 16:50:00', 'sim'),
(default, default, default, '2024-03-19 16:55:00', 'não'),
(default, 17.80, 18, '2024-03-19 17:00:00', 'sim');

alter table sensores modify column dataHora datetime not null;

alter table empresaTransportadora modify column placaCarro varchar(30) not null unique;

