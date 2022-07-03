#1
CREATE DATABASE if not exists empresa;
use empresa;


#2
create table if not exists empsupervisor(
 cpfempregadosupervisor varchar(11),
 nomeempregadosupervisor varchar(100),
 primary key (cpfempregadosupervisor));
		insert into empsupervisor values 
        (55555555555, "Maria");
			select * from empsupervisor;

create table if not exists empregado(
 cpfempregado varchar(11),
 nomeempregado varchar(100),
 cpfempregadosupervisor varchar(11),
 primary key (cpfempregado),
 foreign key (cpfempregadosupervisor) references empsupervisor (cpfempregadosupervisor));
 		insert into empregado values 
        (11111111111, "Manuel", 55555555555),
		(22222222222, "Joao", 55555555555),
		(33333333333, "Jose", 55555555555),
		(44444444444, "Carlos", 55555555555),
		(55555555555, "Maria", 55555555555);
			select * from empregado;
 
create table if not exists dependente(
 nomedependente varchar(100),
 sexodependente varchar(12),
 cpfempregado varchar(11),
 primary key (nomedependente),
 foreign key (cpfempregado) references empregado (cpfempregado));
 		insert into dependente values 
        ("dependentejoao", "homem", 22222222222),
		("dependentemaria", "mulher", 55555555555);
			select * from dependente;
 
create table if not exists departamento(
 sigladepto varchar(15),
 nomedepto varchar(100),
 cpfempregado varchar(11),
 primary key (sigladepto),
 foreign key (cpfempregado) references empregado (cpfempregado));
  		insert into departamento values 
        ("cp", "compras", 11111111111),
		("vd", "vendas", 22222222222);
			select * from departamento;

create table if not exists projeto(
 nroprojeto int auto_increment,
 nomeprojeto varchar(100),
 primary key (nroprojeto));
   		insert into projeto values 
        (default, "projetoum"),
		(default, "projetodois");
			select * from projeto;
 
create table if not exists desenvolve(
 horastrabalhadas int,
 cpfempregado varchar(11),
 nroprojeto int,
 foreign key (cpfempregado) references empregado (cpfempregado),
 foreign key (nroprojeto) references projeto(nroprojeto));
		insert into desenvolve values 
		(19, 11111111111, "1"),
		(14, 22222222222, "1"),
		(5, 33333333333, "1"),
		(10, 44444444444, "2"),
		(9, 55555555555, "2");
			select * from desenvolve;
 
create table if not exists trabalha(
 datainicio varchar(10),
 cpfempregado varchar(11),
 sigladepto varchar(15),
 primary key (datainicio),
 foreign key (cpfempregado) references empregado (cpfempregado),
 foreign key (sigladepto) references departamento (sigladepto));
 		insert into trabalha values 
		("10/12/2020", 11111111111, "vd"),
		("11/12/2020", 22222222222, "cp"),
		("12/12/2020", 33333333333, "vd"),
		("13/12/2020", 44444444444, "cp"),
		("14/12/2020", 55555555555, "vd");
			select * from trabalha;
 
create table if not exists controla(
 sigladepto varchar(15),
 nroprojeto int,
 foreign key (sigladepto) references departamento (sigladepto),
 foreign key (nroprojeto) references projeto (nroprojeto));
		insert into controla values 
		("vd", 1),
		("cp", 2);
			select * from controla;


#3
select e.nomeempregado, d.nomedepto, es.nomeempregadosupervisor from trabalha as t
join empregado as e
on t.cpfempregado=e.cpfempregado
join departamento as d
on t.sigladepto=d.sigladepto
join empsupervisor as es
on e.cpfempregadosupervisor=es.cpfempregadosupervisor;
 
 
#4
select e.nomeempregado, d.nomedependente from empregado as e
join dependente as d
on e.cpfempregado=d.cpfempregado;


#5
select e.nomeempregado, p.nomeprojeto, d.horastrabalhadas from desenvolve as d
join empregado as e
on d.cpfempregado=e.cpfempregado
join projeto as p
on p.nroprojeto=d.nroprojeto;


#6
select avg(horastrabalhadas) from desenvolve;


#7
select count(nomeempregado), e.nomeempregado, sum(horastrabalhadas) from desenvolve as d
join empregado as e
on d.cpfempregado=e.cpfempregado
where nomeempregado="Manuel";