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
(default,'Marcos','São Paulo','Santa Catarina','2024-03-10'),
(default,'Robson','Rio Grande do Sul','Goias','2024-03-21'),
(default,'Cleber','Mato Grosso','São Paulo','2024-02-25');

insert into silo values 
(default,'Travessa das magaridas 133 - Osasco',' Margaridas Grãos SA'),
(default,'Avenida Paulista 1234 - Santana','Santana Produtora LTDA'),
(default,'Rua Shiojiro Mukai 2345 -  Belo Horizonte','Mukai Trigo SA');

insert into sensor values 
(default,'DHT11','2023-12-20', null, 1, 1),
(default,'DHT11','2023-10-15', 1, null, 2),
(default,'DHT11','2023-11-23', 2, null, 3),
(default,'DHT11','2024-01-05', null, 2, 4),
(default,'DHT11','2024-01-10', 3, null, 5),
(default,'DHT11','2024-02-10', null, 3, 6);


insert into monitoramento values 
(default,'14°C','10%','2024-03-21 13:30:00','1000'),
(default,'20°C','12%','2024-03-20 10:45:00','1001'),
(default,'25°C','25%','2024-03-19 14:00:30','1002'),
(default,'18°C','13%','2024-03-18 12:00:00','1003'),
(default,'13°C','10%','2024-03-17 11:45:30','1004'),
(default,'16°C','9%','2024-03-16 10:20;50','1005');






select * from silo;
select * from transporte;
select * from sensor;
select * from monitoramento;
select * from monitoramento join sensor on idsensor = sensorquerealizou;
select * from sensor join silo on idsilo = silo;
select * from sensor join transporte on idviagem = transporte;
select * from monitoramento join sensor on idsensor = sensorquerealizou join silo on idsilo = silo;
select * from monitoramento join sensor on idsensor = sensorquerealizou join transporte on idviagem = transporte;



