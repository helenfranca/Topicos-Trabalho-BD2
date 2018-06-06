/* Modelo Físico: */

DROP TABLE IF EXISTS Reserva;
DROP TABLE IF EXISTS Pagamento;
DROP TABLE IF EXISTS Vaga;
DROP TABLE IF EXISTS Estacionamento;
DROP TABLE IF EXISTS Cliente_Cartao;
DROP TABLE IF EXISTS Localizacao;
DROP TABLE IF EXISTS Tipo;
DROP TABLE IF EXISTS Cartao;
DROP TABLE IF EXISTS Cliente;



CREATE TABLE Cliente (
    nome Varchar(150),
    cpf bigint,
    email Varchar(150),
    senha Varchar(150),
    id_cliente int PRIMARY KEY,
    datanascimento Date
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
    numeroCartao int,
    dataValidade Date,
    cvv int,
    id_cartao int PRIMARY KEY
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

CREATE TABLE Cliente_Cartao (
    id_cliente int,
    id_cartao int
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
 
ALTER TABLE Cliente_Cartao ADD CONSTRAINT FK_Cliente_Cartao_0
    FOREIGN KEY (id_cliente)
    REFERENCES Cliente (id_cliente)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Cliente_Cartao ADD CONSTRAINT FK_Cliente_Cartao_1
    FOREIGN KEY (id_cartao)
    REFERENCES Cartao (id_cartao)
    ON DELETE SET NULL ON UPDATE CASCADE;
