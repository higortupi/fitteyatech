create database fitteyatech;
use fitteyatech;

create table silo(
idSilo int primary key auto_increment,
dataAbastecimento date,
dataSaida date,
pesoInserido float,
pesoRetirado float
);

create table transportadora(
idTransportadora int primary key auto_increment,
dataRecimento date,
dataSaida date,
fkMotorista int,
constraint fkTransportadoraMotorista foreign key (fkMotorista)
references motorista(idMotorista),
fkCarro int,
constraint fkTransportadoraCarro foreign key (fkCarro)
references carro(idCarro)
);

create table motorista(
idMotorista int primary key auto_increment,
nome varchar(45),
cpf varchar(45),
cnh varchar(45)
);

create table carro(
idCarro int primary key auto_increment,
placaCarro varchar(45),
modelo varchar(45),
marca varchar(45)
);

create table usuarios(
idUsuario int primary key auto_increment,
nome varchar(45),
senha varchar(45),
cargo varchar(45)
constraint chkCargo check(cargo in("Admin","Usuário"))
);

create table dadosTrigo(
idDado int primary key auto_increment,
temperatura float,
umidade float,
dataDado date,
fkSilo int,
constraint fkTrigoSilo foreign key (fkSilo)
references silo(idSilo),
fkTransportadora int,
constraint fkTrigoTransportadora foreign key (fkTransportadora)
references transportadora(idTransportadora)
);



