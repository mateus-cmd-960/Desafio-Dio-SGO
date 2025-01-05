-- Criação do script para database oficina.
drop database Workshop_management;
create database Workshop_management;
use Workshop_management;

-- Criação da tabela cliente
create table Clients(
	idClient int primary key,
    Nome varchar(45) not null,
    contact varchar(15) unique not null,
    idorder int,
    constraint fk_Revision foreign key ( idorder) references orderRevision(idOrder)
    
);
-- Criação da tabela mecanico
create table mechanic(
	idMechanic int primary key,
    Nome varchar (45) not null,
    Address varchar (45) not null,
    Specialty varchar (45) not null
);

-- Criação da tabela veículo
create table vehicle(
	idVehicle int primary key,
    mark varchar (25) not null,
    matricula varchar (25) not null,
    idclient int,
    constraint fk_Client foreign key (idClient) references clients (idClient )
    
);
-- Criação pedido de revisão

create table orderRevision(
	idOrder int primary key,
    description varchar (255),
    idService int,
    constraint fk_Service foreign key (idService) references serviceOrder (idService)
   
);
alter table serviceOrder
modify statu enum ("em revisão", "revisado");
create table serviceOrder(
	idService int primary key,
    data_emission date,
    valor int,
    Statu enum ("em revisão", "revisado"),
    data_end date,
     idMecanico int,
    constraint fk_Mecanico foreign key ( idMecanico) references mechanic (idMechanic)
);



 

