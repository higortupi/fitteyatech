create database fitteyatech;
use fitteyatech;

create table encomenda (
idMercadoria int primary key auto_increment,
prazo date not null,
toneladas float,
motorista varchar (50),
placa char (7),
destino varchar (100) not null,
responsavel varchar (50) not null,
temperatura float,
umidade int,
atualizado datetime,
status varchar(15),
dtStatus date,
constraint chkStatus
check (status in('entregue', 'enviado', 'pendente'))
);


create table silo (
idTrigo int primary key auto_increment,
dtColheita date,
toneladas float,
temperatura float,
umidade int,
atualizado datetime
);

create table usuario (
idUsuario int primary key auto_increment,
nome varchar (50),
nomeEmpresa varchar (50),
email varchar (30),
senha varchar(20)
);

insert into silo (dtColheita, toneladas, temperatura, umidade, atualizado) values
('2024-01-10', 100, '20.2', 19, '2024-03-22 14:02:00'),
('2023-12-01', 92, '18.9', 16, '2024-03-22 14:02:00');

select dtColheita as 'Data da Colheita', toneladas as 'Toneladas', temperatura as 'Temperatura', umidade as 'Umidade do ar', atualizado as 'Atualizado em:' from silo;

insert into encomenda values
(default, '2024-03-18', 10, 'Antonio dos Santos', 'ABC1D23', 'Panco', 'Fernando Reis', '18.2', 15, '2024-03-18 18:43:13', 'entregue', '2024-03-18');

select idMercadoria as 'Número da encomenda', prazo as 'Prazo', toneladas as 'Toneladas', motorista as 'Motorista Responsável', placa as 'Placa do caminhão', destino as 'Empresa destino', responsavel as 'Responsável pela encomenda', 
temperatura as 'Temperatura', umidade as 'Umidade do ar', atualizado as 'Atualizado em:', status as 'status da encomenda', dtStatus as 'Atualizado em:' from encomenda;

insert into usuario values
(default, 'José Ferreira', 'Fazenda Feliz', 'jose.ferreira@gmail.com', 'Jose1985');

update usuario
set senha = 'Ferreira1985'
where idUsuario = 1;

select idUsuario as 'Número de identificação', nome as 'Nome', email as 'Email', senha as 'Senha' from usuario;

drop table encomenda;
drop table silo;
drop table usuario;
drop database fitteyatech;