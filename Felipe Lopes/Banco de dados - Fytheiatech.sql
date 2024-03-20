use sprint1;

create table empresa(
idEmpresa int primary key auto_increment,
nome varchar (50),
localizacao varchar (50)
);

create table Carga(
idCarga int primary key auto_increment,
peso decimal(11,11),
responsavel varchar (50),
placa_caminhao char (7),
modelo_caminhao varchar (20)
);

create table sensor(
idSensor int primary key auto_increment,
estado varchar (9),
temperatura decimal(11.11),
umidade decimal (11.11)
);