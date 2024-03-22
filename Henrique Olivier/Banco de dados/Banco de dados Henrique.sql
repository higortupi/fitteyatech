create database fitteyatech;
use fitteyatech;


create table transporte (
idviagem int primary key auto_increment,
motoristaresposnsavel varchar(40),
origem varchar(100),
destino varchar(100),
saida date
);

create table silo ( 
idsilo int primary key auto_increment,
localizacao varchar(100),
empresa varchar (40)
);

create table sensor (
idsensor int primary key auto_increment,
modelo varchar(40),
manutencao date,
silo int,
transporte int, 
posicao int,
constraint chkposicao check(posicao in (1,2,3,4,5,6)),
constraint fksilo foreign key (silo) references silo(idsilo),
constraint fktransporte foreign key (transporte) references transporte(idviagem)
)auto_increment=1000;

create table monitoramento ( 
idleitura int primary key auto_increment,
temperatura varchar(4),
humidade varchar(4),
data datetime,
sensorquerealizou int,
constraint fksensormonitoramento foreign key (sensorquerealizou) references sensor(idsensor) 
);

insert into transporte values 
(default,'Cleber','Mato Grosso','São Paulo','2024-02-25');

insert into silo values 
(default,'Avenida Paulista 1234 - Santana','Santana Produtora'),
(default,'Rua Shiojiro Mukai 2345 Belo Horizonte','Mukai Trigo');

insert into sensor values 
(default,'DHT11','2023-12-20', null, 1, 1),
(default,'DHT11','2023-10-15', 1, null,2);

insert into monitoramento values 
(default,'14°C','10%','2024-03-21 13:30:00','1000'),
(default,'20°C','12%','2024-03-20 10:45:00','1001');

select * from monitoramento join sensor on idsensor = sensorquerealizou;
select * from sensor join silo on idsilo = silo;
select * from sensor join transporte on idviagem = transporte;


