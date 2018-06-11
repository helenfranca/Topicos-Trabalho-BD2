/* Modelo Físico: */

DROP TABLE IF EXISTS Reserva;
DROP TABLE IF EXISTS Pagamento;
DROP TABLE IF EXISTS Vaga;
DROP TABLE IF EXISTS Estacionamento;
DROP TABLE IF EXISTS Localizacao;
DROP TABLE IF EXISTS Tipo;
DROP TABLE IF EXISTS Cartao;
DROP TABLE IF EXISTS Cliente;



CREATE TABLE Cliente (
    nome Varchar(150),
    cpf bigint,
    email Varchar(150),
    senha Varchar(150),
    id_cliente int PRIMARY KEY
);

CREATE TABLE Vaga (
    id_vaga int PRIMARY KEY,
    cobertura boolean,
    status boolean,
    id_estacionamento int,
    id_localizacao int,
    id_tipo int
);

CREATE TABLE Estacionamento (
    valor_hora money,
    capacidade int,
    nome Varchar(150),
    horario_abre Time,
    horario_fecha Time,
    id_estacionamento int PRIMARY KEY,
    id_localizacao int
);

CREATE TABLE Pagamento (
    datapagamento Date,
    id_pagamento int PRIMARY KEY,
    valor money,
    pago boolean,
    formapagamento Varchar(20),
    id_cliente int
);

CREATE TABLE Reserva (
    id_reserva int PRIMARY KEY,
    datareserva Date,
    horareserva Time,
    horachegada Time,
    datasaida Date,
    horasaida Time,
    id_cliente int,
    id_vaga int,
    id_pagamento int
);

CREATE TABLE Cartao (
    nomeTitular Varchar(150),
    numeroCartao bigint,
    dataValidade Date,
    cvv int,
    id_cartao int PRIMARY KEY,
    id_cliente int
);

CREATE TABLE Localizacao (
    id_localizacao int PRIMARY KEY,
    longitude int,
    latitude int
);

CREATE TABLE Tipo (
    id_tipo int PRIMARY KEY,
    nome Varchar(50)
);

 
ALTER TABLE Vaga ADD CONSTRAINT FK_Vaga_1
    FOREIGN KEY (id_estacionamento)
    REFERENCES Estacionamento (id_estacionamento)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Vaga ADD CONSTRAINT FK_Vaga_2
    FOREIGN KEY (id_localizacao)
    REFERENCES Localizacao (id_localizacao)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Vaga ADD CONSTRAINT FK_Vaga_3
    FOREIGN KEY (id_tipo)
    REFERENCES Tipo (id_tipo)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Estacionamento ADD CONSTRAINT FK_Estacionamento_1
    FOREIGN KEY (id_localizacao)
    REFERENCES Localizacao (id_localizacao)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Pagamento ADD CONSTRAINT FK_Pagamento_1
    FOREIGN KEY (id_cliente)
    REFERENCES Cliente (id_cliente)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Reserva ADD CONSTRAINT FK_Reserva_1
    FOREIGN KEY (id_cliente)
    REFERENCES Cliente (id_cliente)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Reserva ADD CONSTRAINT FK_Reserva_2
    FOREIGN KEY (id_vaga)
    REFERENCES Vaga (id_vaga)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Reserva ADD CONSTRAINT FK_Reserva_3
    FOREIGN KEY (id_pagamento)
    REFERENCES Pagamento (id_pagamento)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE Cartao ADD CONSTRAINT FK_Cliente
    FOREIGN KEY (id_cliente)
    REFERENCES Cliente (id_cliente)
    ON DELETE SET NULL ON UPDATE CASCADE;
    
    
   

INSERT INTO Cliente(id_cliente,nome,email,senha,cpf)
VALUES (1,'Maria da Graça','mariadagraca@email.com','maria123',12345678910),
       (2,'João Silva','joaosilva@email.com','joao123',32165498709),
       (3,'José Antunes','joseantunes@email.com','jose123',13524635789),
	   (4,'Lara Linda','laralinda@email.com','lara123',98765432111),
	   (5,'Magali Melancia','magali@emai.com','magali123',23453123489),
	   (6,'Joana Ferreira','joanaferreira@email.com','joana123',98712376534),
	   (7,'Moana de Motonui','moanamotonui@email.com','moana123',91827364567),
	   (8,'Maui Semideus','maui@email.com','maui123',23498710023),
	   (9,'Manoela Marlim','manoela@email.com','marlim123',91827364733),
	   (10,'Carol Carine','carol@email.com','carol123',87622234567),
	   (11,'Maria das Graças Santos','mariagraca123@email.com','mariags321',20125012354);
	   
	   
-- datavalidade deve ser AAAA-MM, está desse modo abaixo pois o banco não aceita só ano/mês
INSERT INTO Cartao(id_cartao,nomeTitular,numeroCartao,dataValidade,cvv,id_cliente) 
VALUES (1,'Maria da Graca',111122223333444,'2022-02-01',123,1),
	   (2,'Joao Silva',2222333344445555,'2022-03-01',234,2),
	   (3,'Jose Antunes',3333444455556666,'2023-04-01',345,1),
	   (4,'Lara Lima',4444555566667777,'2023-05-01',456,3),
	   (5,'Magali Melancia',5555666677778888,'2024-03-01',567,4),
	   (6,'Joana Ferreira',6666777788889999,'2024-04-01',678,4),
	   (7,'Moana de Motonui',7777888899990000,'2025-02-01',789,5),
	   (8,'Maui Semideus',8888999900001111,'2025-03-01',890,2),
	   (9,'Manoela Marlim',9999000011112222,'2022-06-01',901,6),
	   (10,'Carol Carine',0000111122223333,'2023-06-01',012,7),
	   (11,'Maria da Graca',2020303040405050,'2022-02-03',123,4);
	   

INSERT INTO Tipo(id_tipo,nome) 
VALUES (1,'Comum'),
	   (2,'Idoso'),
	   (3,'Deficiente'),
	   (4,'Moto');
	   

INSERT INTO Localizacao(id_localizacao,longitude,latitude) 
VALUES (1,-40.2876417,-20.3126281),
	   (2,-40.2748785,-20.2401866),
	   (3,-40.2880799,-20.31282148),
	   (4,-40.28898112,-20.31325413);
	   	   

	  
INSERT INTO Estacionamento(id_estacionamento,valor_hora,capacidade,nome,horario_abre,horario_fecha,id_localizacao)
VALUES (1,15.00,250,'Shopping Vitória','07:00','23:00',1),
	   (2,10.00,200,'Shopping Mestre Álvaro','07:00','23:59',2);

	   
INSERT INTO Vaga(id_vaga,cobertura,status,id_estacionamento,id_localizacao,id_tipo)
VALUES (1,'True','True',1,3,3),
       (2,'True','False',1,4,2);


INSERT INTO Pagamento(id_pagamento,dataPagamento,valor,pago,id_cliente)
VALUES (1,'2018-01-23',20.00,'True',1),
	   (2,'2018-02-20',15.00,'True',2),
	   (3,'2018-03-18',30.00,'True',5),
	   (4,'2019-10-10',40.00,'False',4);

	   
INSERT INTO Reserva(id_reserva,dataReserva,horaReserva,horaChegada,dataSaida,horaSaida,id_cliente,id_vaga,id_pagamento)
VALUES (1,'2018-01-23','19:50','20:00','2018-01-23','21:15',1,1,1),
	   (2,'2018-02-20','14:55','15:00','2018-02-20','16:00',2,2,2),
	   (3,'2018-03-18','17:27','17:30','2018-03-18','19:30',5,1,3),
	   (4,'2019-10-10','13:50','14:00','2019-10-10','16:15',4,2,4);




SELECT * from Cliente;
SELECT * from Vaga;
SELECT * from Estacionamento;
SELECT * from Pagamento;
SELECT * from Reserva;
SELECT * from Cartao;
SELECT * from Localizacao;
SELECT * from Tipo;
