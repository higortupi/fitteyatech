create database fitteyaTech;

use fitteyaTech;

create table usuario(
	idUsuario int primary key auto_increment,
    nome varchar(60),
    email varchar(60),
    senha varchar(20),
    tipoUsuario varchar(20),
    constraint chkTipoUsuario check(tipoUsuario in ('administrador','funcionario'))
);

create table empresa(
	idEmpresa int primary key auto_increment,
    nome varchar(60),
    cnpj char(18)
);

create table sensor(
	idSensor int primary key auto_increment,
    temperatura decimal(4,2),
    umidade decimal(3),
    localSensor varchar(20)
    constraint chkLocalSensor check(localSensor in ('armazenamento','transporte'))
);