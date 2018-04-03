SELECT nometitular, datapagamento, valor
FROM Pagamento
INNER JOIN Cartao
ON (Pagamento.id_cartao = Cartao.id_cartao)

SELECT nome, horareserva, horachegada, horasaida
FROM Reserva
INNER JOIN Cliente
ON (Reserva.id_cliente = Cliente.id_cliente)

SELECT nome, sigla, capacidade, valor_hora
FROM Estacionamento
RIGHT OUTER JOIN Patio
ON (Estacionamento.id_estacionamento = Patio.id_estacionamento)


CREATE VIEW Dados_do_Cartao AS
SELECT nometitular, datavalidade
FROM Cartao

SELECT * FROM Dados_do_Cartao


CREATE VIEW Maiores_Valores AS
SELECT valor
FROM Pagamento
WHERE (valor > CAST(22.00 AS money)) AND (pago IS TRUE)

SELECT * FROM Maiores_Valores


SELECT EXISTS (
SELECT status AS Vagas_disponivel
FROM Vaga
WHERE status IS TRUE
)

