CREATE DATABASE if not exists transportadora;

USE transportadora;

create table if not exists caminhao(
 codigocamminhao int not null,
 nomecaminhao varchar(20),
 corcaminhao varchar(20),
 primary key (codigocamminhao));

describe caminhao;

create table if not exists motorista(
 codigomotorista INT not null,
 nomemotorista varchar(30) not null,
 idademotorista INT,
 statusmotorista varchar(10),
 primary key (codigomotorista));

describe motorista;

create table if not exists reserva(
codigoreserva int auto_increment,
datareserva varchar(12),
codigo_caminhao int,
codigo_motorista int,
primary key(codigoreserva),
foreign key (codigo_caminhao) references caminhao (codigocamminhao),
foreign key (codigo_motorista) references motorista (codigomotorista)
);

describe reserva;

insert into motorista values 
(1, 'Manoel', 34, 2),
(2, 'João', 33, 1),
(3, 'Carlos', 55, 3),
(4, 'José', 60, 4);

insert into caminhao values 
(1, 'Princesa do sul', 'azul'),
(2, 'Pesadao', 'rosa'),
(3, 'Possante', 'amarelo'),
(4, 'Rota', 'vermelho');

insert into reserva values 
(default,'11/07/2020', 1, 3),
(default,'13/06/2020', 4, 1),
(default,'04/05/2020', 2, 2),
(default,'09/09/2020', 3, 4);

select * from caminhao;
select * from reserva;
select * from motorista;

select r.codigoreserva, r.datareserva, c.corcaminhao, c.codigocamminhao, r.codigo_motorista
from reserva as r inner join caminhao as c 
on r.codigo_caminhao=c.codigocamminhao
where c.nomecaminhao= "Princesa do sul"
and r.datareserva = '11/07/2020'
or r.datareserva = '20/11/2019'
or r.datareserva = '21/11/2019'
or r.datareserva = '22/11/2019';

Select * from caminhao
where nomecaminhao like 'Ad%'
or nomecaminhao like '%ad%'
or nomecaminhao like '%ad';

select m.nomemotorista, m.idademotorista, r.datareserva, c.corcaminhao from reserva as r
join motorista as m
on m.codigomotorista=r.codigo_motorista
join caminhao as c
on c.codigocamminhao=r.codigo_caminhao
where c.corcaminhao= "vermelho";

select avg(idademotorista) from motorista;

select count(codigomotorista) from motorista where nomemotorista="Tadeu";
