/* Modelo Lógico: */

CREATE TABLE Cliente (
    id_cliente int PRIMARY KEY,
    nome Varchar,
    cpf int,
    email Varchar,
    senha Varchar   
);

CREATE TABLE Vaga (
    id_vaga int PRIMARY KEY,
    cobertura boolean,
    status Varchar,
    FK_Patio_id_patio int,
    FK_Localizacao_id_localizacao int,
    FK_Tipo_id_tipo int
);

CREATE TABLE Estacionamento (
    id_estacionamento int PRIMARY KEY,
    valor_hora money,
    capacidade int,
    nome Varchar,   
    FK_Localizacao_id_localizacao int
);

CREATE TABLE Pagamento (
    id_pagamento int PRIMARY KEY,
    dataPagamento Date,    
    valor money,
    pago boolean,
    FK_Cartao_id_cartao int
);

CREATE TABLE Reserva (
    id_reserva int PRIMARY KEY,
    dataReserva Date,
    horaReserva Time,
    horaChegada Time,
    dataSaida Time,
    horaSaida Time,
    FK_Cliente_id_cliente int,
    FK_Vaga_id_vaga int,
    FK_Pagamento_id_pagamento int
);

CREATE TABLE Cartao (
    id_cartao int PRIMARY KEY,
    nomeTitular Varchar,
    numeroCartao int,
    dataValidade Date,
    cvv int    
);

CREATE TABLE Localizacao (
    id_localizacao int PRIMARY KEY,
    longitude int,
    latitude int
);

CREATE TABLE Tipo (
    id_tipo int PRIMARY KEY,
    nome Varchar
);

CREATE TABLE Patio (
    id_patio int PRIMARY KEY,
    sigla Varchar,
    FK_Estacionamento_id_estacionamento int
);

CREATE TABLE Cliente_Cartao (
    FK_Cliente_id_cliente int,
    FK_Cartao_id_cartao int
);
 
ALTER TABLE Vaga ADD CONSTRAINT FK_Vaga_1
    FOREIGN KEY (FK_Patio_id_patio)
    REFERENCES Patio (id_patio)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Vaga ADD CONSTRAINT FK_Vaga_2
    FOREIGN KEY (FK_Localizacao_id_localizacao)
    REFERENCES Localizacao (id_localizacao)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Vaga ADD CONSTRAINT FK_Vaga_3
    FOREIGN KEY (FK_Tipo_id_tipo)
    REFERENCES Tipo (id_tipo)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Estacionamento ADD CONSTRAINT FK_Estacionamento_1
    FOREIGN KEY (FK_Localizacao_id_localizacao)
    REFERENCES Localizacao (id_localizacao)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Pagamento ADD CONSTRAINT FK_Pagamento_1
    FOREIGN KEY (FK_Cartao_id_cartao)
    REFERENCES Cartao (id_cartao)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Reserva ADD CONSTRAINT FK_Reserva_1
    FOREIGN KEY (FK_Cliente_id_cliente)
    REFERENCES Cliente (id_cliente)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Reserva ADD CONSTRAINT FK_Reserva_2
    FOREIGN KEY (FK_Vaga_id_vaga)
    REFERENCES Vaga (id_vaga)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Reserva ADD CONSTRAINT FK_Reserva_3
    FOREIGN KEY (FK_Pagamento_id_pagamento)
    REFERENCES Pagamento (id_pagamento)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Patio ADD CONSTRAINT FK_Patio_1
    FOREIGN KEY (FK_Estacionamento_id_estacionamento)
    REFERENCES Estacionamento (id_estacionamento)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Cliente_Cartao ADD CONSTRAINT FK_Cliente_Cartao_0
    FOREIGN KEY (FK_Cliente_id_cliente)
    REFERENCES Cliente (id_cliente)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Cliente_Cartao ADD CONSTRAINT FK_Cliente_Cartao_1
    FOREIGN KEY (FK_Cartao_id_cartao)
    REFERENCES Cartao (id_cartao)
    ON DELETE SET NULL ON UPDATE CASCADE;
