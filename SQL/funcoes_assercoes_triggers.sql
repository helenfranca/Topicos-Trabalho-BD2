CREATE ASSERTION cliente_pagamento_pendente CHECK 
(EXISTS 
(Select R.id_cliente, R.id_pagamento, P.id_pagamento from RESERVA R inner join PAGAMENTO P on (P.pago=False)
)
)


CREATE ASSERTION cliente_tem_cartao CHECK 
(EXISTS 
(Select C.id_cliente, T.id_cliente from CLIENTE C inner join CARTAO T on (C.id_cliente = T.id_cliente)
)
)


CREATE ASSERTION cliente_tem_reserva CHECK 
(EXISTS 
(Select C.id_cliente, R.id_cliente from CLIENTE C inner join RESERVA R on (C.id_cliente = R.id_cliente)
)
)


CREATE ASSERTION tem_vaga_disponivel CHECK 
(EXISTS 
(Select id_vaga, status from VAGA where status=’true’
)
)





CREATE FUNCTION checkPendencias() RETURNS TRIGGER AS ' 
BEGIN
IF EXISTS (Select R.id_cliente, R.id_pagamento, P.id_pagamento from RESERVA R inner join PAGAMENTO P on (P.pago=False)
) THEN
RAISE EXCEPTION ''Erro: Cliente contém reservas com pendência!''; END IF; RETURN NULL; END
'
LANGUAGE plpgsql;

CREATE TRIGGER checkPendenciasTrigger AFTER INSERT OR UPDATE OF id_cliente ON RESERVA
FOR EACH ROW
EXECUTE PROCEDURE checkPendencias();

Insert into Reserva (id_reserva,dataReserva,horaReserva,horaChegada,dataSaida,horaSaida,id_cliente,id_vaga,id_pagamento) VALUES
(21,'2018-06-08','19:00','19:20','2018-06-08','20:20',2,10,2);




