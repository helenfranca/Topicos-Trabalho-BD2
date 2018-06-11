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
    cpf varchar(11) UNIQUE,
    email Varchar(150) UNIQUE,
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
    nome Varchar(200),
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
    numeroCartao Varchar(20),
    dataValidade Date,
    cvv int,
    id_cartao int PRIMARY KEY,
    id_cliente int
);

CREATE TABLE Localizacao (
    id_localizacao int PRIMARY KEY,
    longitude Decimal,
    latitude Decimal
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
    
    
   

/* Inserts */
INSERT INTO Cliente (id_cliente,nome,cpf,email,senha) VALUES
	(1,'Cauã Pires',51380624762,'CauãPires1@yahoo.com.br','E9#8EheXc$'),
	(2,'Maria Julia Novaes',95702846338,'MariaJuliaNovaes2@uol.com.br','*_Z09RzYgb'),
	(3,'Lucca da Mota',24536879056,'LuccadaMota3@uol.com.br','(7qMnAgS_Q'),
	(4,'Sra. Esther Lopes',94315086721,'Sra.EstherLopes4@ig.com.br','Dezp9w@a^9'),
	(5,'Lucca da Cunha',46809512314,'LuccadaCunha5@hotmail.com','7MHST_Ri&j'),
	(6,'Julia Rodrigues',59042381779,'JuliaRodrigues6@hotmail.com','%),8Q4Obftk'),
	(7,'Luna Almeida',64095723114,'LunaAlmeida7@bol.com.br','5eXkw),SX@z'),
	(8,'Maria Sophia Lima',26350184998,'MariaSophiaLima8@gmail.com','lnwdVIiU^4'),
	(9,'Helena Mendes',06293574818,'HelenaMendes9@gmail.com','2xl3SHcmt_'),
	(10,'Sr. André Melo',41962305716,'Sr.AndréMelo10@bol.com.br','Et5L_4Lim_'),
	(11,'Luiz Fernando Caldeira',16204895711,'LuizFernandoCaldeira11@ig.com.br','jD3IQ%XoP+'),
	(12,'Maria Castro',87639052483,'MariaCastro12@ig.com.br','^#%ESG#29f'),
	(13,'Dr. André da Cunha',37412086553,'Dr.AndrédaCunha13@yahoo.com.br','a6vTBxeu_T'),
	(14,'Matheus Barbosa',71329845013,'MatheusBarbosa14@gmail.com','iaWWkqQj+6'),
	(15,'Dra. Clarice Vieira',17042635914,'Dra.ClariceVieira15@yahoo.com.br','),F),AWjp52L'),
	(16,'Sr. Enzo Gabriel Araújo',14067589221,'Sr.EnzoGabrielAraújo16@ig.com.br','+tID6zr3V5'),
	(17,'Dr. Enzo Moraes',83295076111,'Dr.EnzoMoraes17@yahoo.com.br','H!6hXJ2p04'),
	(18,'Samuel Costela',75986104366,'SamuelCostela18@bol.com.br','^MP38Cft04'),
	(19,'Nicolas da Mota',08413259614,'NicolasdaMota19@gmail.com','!VDL^mah$2'),
	(20,'Maria Eduarda Santos',57168024949,'MariaEduardaSantos20@yahoo.com.br','^KmCWgh1f0');
	   
	   
-- datavalidade deve ser AAAA-MM, está desse modo abaixo pois o banco não aceita só ano/mês
INSERT INTO Cartao(id_cartao,nomeTitular,numeroCartao,dataValidade,cvv,id_cliente) 
VALUES (1,'Maria da Graca','111122223333444','2022-02-01',123,1),
	   (2,'Joao Silva','2222333344445555','2022-03-01',234,2),
	   (3,'Jose Antunes','3333444455556666','2023-04-01',345,1),
	   (4,'Lara Lima','4444555566667777','2023-05-01',456,3),
	   (5,'Magali Melancia','5555666677778888','2024-03-01',567,4),
	   (6,'Joana Ferreira','6666777788889999','2024-04-01',678,4),
	   (7,'Moana de Motonui','7777888899990000','2025-02-01',789,5),
	   (8,'Maui Semideus','8888999900001111','2025-03-01',890,2),
	   (9,'Manoela Marlim','9999000011112222','2022-06-01',901,6),
	   (10,'Carol Carine','0000111122223333','2023-06-01',012,7),
	   (11,'Maria da Graca','2020303040405050','2022-02-03',123,1);
	   

INSERT INTO Tipo(id_tipo,nome) 
VALUES (1,'Comum'),
	   (2,'Idoso'),
	   (3,'Deficiente'),
	   (4,'Moto');
	   

INSERT INTO Localizacao (id_localizacao,latitude,longitude) VALUES
	(1,-80.636818,147.524288),
	(2,15.718562,-51.049281),
	(3,70.916808,-102.522421),
	(4,-48.240273,144.818502),
	(5,70.6671485,65.759595),
	(6,77.790201,166.571072),
	(7,-0.0621385,-143.498212),
	(8,2.529498,54.372845),
	(9,-61.2723115,-124.775793),
	(10,17.4572735,-107.374065),
	(11,76.3955665,-140.206501),
	(12,52.1314665,-17.568848),
	(13,78.281708,-35.948899),
	(14,63.260096,75.486904),
	(15,-83.1447785,-179.167005),
	(16,-45.2936705,-139.802345),
	(17,-27.757853,53.460657),
	(18,14.545535,170.263701),
	(19,-9.9714765,71.858571),
	(20,37.9466755,-63.582455),
	(21,18.237416,20.034899),
	(22,-52.949143,-172.627316),
	(23,28.441137,-16.315230),
	(24,44.064434,12.092784),
	(25,75.211367,143.546670),
	(26,71.3980785,-132.997294),
	(27,52.168107,-82.361460),
	(28,-54.256948,-126.597828),
	(29,-86.3054185,80.403839),
	(30,87.2231435,-121.293637);
	   	   

	  
INSERT INTO Estacionamento(id_estacionamento,id_localizacao,nome,valor_hora,capacidade,horario_abre,horario_fecha) VALUES
	(1,1,'Shopping Vitória',11.00,400,'07:00','23:59'),
	(2,2,'Shopping Mestre Álvaro',6.00,400,'09:00','23:50'),
	(3,3,'Shopping MontSerrat',8.00,200,'10:00','23:00');

	   
INSERT INTO Vaga (id_vaga,id_estacionamento,id_localizacao,id_tipo,status,cobertura) VALUES
	(1,2,4,4,'True','False'),
	(2,2,5,4,'True','False'),
	(3,2,6,1,'False','True'),
	(4,2,7,3,'False','True'),
	(5,2,8,1,'True','True'),
	(6,2,9,1,'True','False'),
	(7,2,10,3,'False','True'),
	(8,2,11,3,'False','True'),
	(9,2,12,4,'False','False'),
	(10,2,13,2,'False','False'),
	(11,2,14,1,'True','False'),
	(12,2,15,2,'True','False'),
	(13,2,16,3,'False','True'),
	(14,2,17,1,'True','True'),
	(15,2,18,1,'True','False'),
	(16,2,19,2,'True','True'),
	(17,2,20,1,'False','False'),
	(18,2,21,4,'False','True'),
	(19,2,22,2,'False','True'),
	(20,2,23,4,'False','False');

INSERT INTO Pagamento (id_pagamento,dataPagamento,valor,pago,formaPagamento,id_cliente) VALUES
	(1,'2018-02-22','12.00',True,'Cartao',1),
	(2,'2018-03-16','6.00',False,'Cartao',2),
	(3,'2018-05-04','10.00',True,'Dinheiro',3),
	(4,'2018-01-02','10.00',False,'Cartao',4),
	(5,'2018-03-30','10.00',True,'Cartao',5),
	(6,'2018-04-03','12.00',True,'Cartao',6),
	(7,'2018-04-29','12.00',False,'Cartao',7),
	(8,'2018-01-18','12.00',False,'Dinheiro',8),
	(9,'2018-01-12','10.00',True,'Cartao',9),
	(10,'2018-03-31','12.00',False,'Cartao',10),
	(11,'2018-02-22','12.00',False,'Cartao',11),
	(12,'2018-03-23','10.00',False,'Dinheiro',12),
	(13,'2018-05-03','10.00',True,'Dinheiro',13),
	(14,'2018-04-14','10.00',True,'Dinheiro',14),
	(15,'2018-02-08','6.00',True,'Dinheiro',15),
	(16,'2018-04-19','10.00',True,'Dinheiro',16),
	(17,'2018-02-02','10.00',True,'Dinheiro',17),
	(18,'2018-02-07','6.00',False,'Dinheiro',18),
	(19,'2018-04-24','10.00',True,'Dinheiro',19),
	(20,'2018-05-03','10.00',False,'Dinheiro',20);

	   
INSERT INTO Reserva (id_reserva,dataReserva,horaReserva,horaChegada,dataSaida,horaSaida,id_cliente,id_vaga,id_pagamento) VALUES
	(1,'2018-02-22','08:03','08:25','2018-02-22','12:23',1,1,1),
	(2,'2018-03-16','08:03','08:25','2018-03-16','12:23',2,2,2),
	(3,'2018-05-04','08:03','08:25','2018-05-04','12:23',3,3,3),
	(4,'2018-01-02','21:03','21:03','2018-01-02','23:25',4,4,4),
	(5,'2018-03-30','08:03','08:25','2018-03-30','12:23',5,5,5),
	(6,'2018-04-03','08:03','08:25','2018-04-03','12:23',6,6,6),
	(7,'2018-04-29','14:08','14:30','2018-04-29','15:32',7,7,7),
	(8,'2018-01-18','08:03','08:25','2018-01-18','12:23',8,8,8),
	(9,'2018-01-12','19:24','19:25','2018-01-12','22:02',9,9,9),
	(10,'2018-03-31','21:03','21:03','2018-03-31','23:25',10,10,10),
	(11,'2018-02-22','19:24','19:25','2018-02-22','22:02',11,11,11),
	(12,'2018-03-23','14:08','14:30','2018-03-23','15:32',12,12,12),
	(13,'2018-05-03','21:03','21:03','2018-05-03','23:25',13,13,13),
	(14,'2018-04-14','21:03','21:03','2018-04-14','23:25',14,14,14),
	(15,'2018-02-08','14:08','14:30','2018-02-08','15:32',15,15,15),
	(16,'2018-04-19','21:03','21:03','2018-04-19','23:25',16,16,16),
	(17,'2018-02-02','14:08','14:30','2018-02-02','15:32',17,17,17),
	(18,'2018-02-07','21:03','21:03','2018-02-07','23:25',18,18,18),
	(19,'2018-04-24','14:08','14:30','2018-04-24','15:32',19,19,19),
	(20,'2018-05-03','19:24','19:25','2018-05-03','22:02',20,20,20);




SELECT * from Cliente;
SELECT * from Vaga;
SELECT * from Estacionamento;
SELECT * from Pagamento;
SELECT * from Reserva;
SELECT * from Cartao;
SELECT * from Localizacao;
SELECT * from Tipo;
