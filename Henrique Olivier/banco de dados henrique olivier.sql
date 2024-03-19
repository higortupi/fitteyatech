create database fitteyatech;
use fitteyatech;

create table sensor (
	idsensor int primary key auto_increment,
    posicao int,
    local varchar(40),
    manutencao date,
    constraint chklocal check(local in('silo','transporte')),
    constraint chkposicao check(posicao in(1,2,3,4,5,6))
)auto_increment = 1000 ;

create table monitoramento (
	idcaptura int primary key auto_increment,
    hora datetime,
    temperatura int,
    humidade varchar(10),
    sensor int,
    constraint fksensot foreign key (sensor) references sensor(idsensor)
);

