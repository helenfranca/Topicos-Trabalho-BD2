SELECT nome, horareserva, horachegada, horasaida
FROM Reserva
INNER JOIN Cliente
ON (Reserva.id_cliente = Cliente.id_cliente)



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
