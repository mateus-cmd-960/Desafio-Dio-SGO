insert into Clients (idClient, Nome,  contact, idorder) values
 ("1", "Mateus", "943230943", "1"),
  ("2", "Isaac", "929407656", "3"),
   ("3", "Paula", "929407662", "4"),
    ("4", "Antonio", "925605300", "2");
    
    delete from clients;

insert into mechanic (idMechanic, Nome, Address, Specialty) values
("1", "João", "xxx-xxxx-xxx", "batechapa"),
("2", "Fernando", "xxx-xyx-zzz", "electricista"),
("3", "Francisco", "mmm-mmm-nnnn", "serviços gerais");

insert into vehicle (idVehicle,  mark, matricula, idclient) values
("1", "I10" , "LD-20-60-LA", "1" ),
("2", "I20" , "LD-20-50-LA", "4"),
("3", "I30" , "LD-40-60-LA", "3"),
("4", "Santa-fé" , "LD-10-90-LA", "2");

delete from vehicle;



insert into orderRevision (idOrder, description,  idService) values
("1", "o ar condicionado do meu carro para de funcionar, preciso que revisei ele", "1"),
("2", "reparação dos calcios", "3"),
("3", "Revisão geral", "2"),
("4", "Bate chapa", "4");

delete from orderRevision;

insert into serviceOrder (idService,  data_emission, valor, Statu, data_end, idMecanico) values
("1", "2025-01-20", "12", "Em revisão", "2025-01-25", "2"),
("2", "2025-01-21", "100", "Em revisão", "2025-01-26", "1"),
("3", "2025-01-22", "121", "Em revisão", "2025-01-25", "3"),
("4", "2025-01-23", "15", "Em revisão", "2025-01-24", "3");


-- Qual é o mecanico que está associado a mais de uma ordem de serviço
select idMecanico, count(*) as total from serviceorder o, mechanic m
 where o.idMecanico = m.idMechanic  group by idMecanico 
 having count(*) > 1;
 
 -- Selecionar os veiculos com as iniciais LD
 select matricula from vehicle where matricula like "LD%";
 
 