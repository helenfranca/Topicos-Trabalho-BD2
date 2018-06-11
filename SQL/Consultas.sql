/*  join_cliente_reserva */
Select nome,email,horareserva
from cliente
inner join reserva
on (cliente.id_cliente = reserva.id_cliente) limit 15


/*  view_cliente */
create view nome_clientes as
select nome, cpf from cliente;

select * from nome_clientes limit 10


/*  view_estacionamento */
create view estacionamentos as 
select nome, valor_hora, capacidade from estacionamento;

select * from estacionamentos


/*  exists_1 */
select exists (select * from pagamento where valor > '600,00' and valor < '1000,00')

/*  exists_2 */
select exists (select distinct pago from pagamento where valor > '600,00' and valor < '1100,00')

/*  exists_3 */
select not exists (select * from reserva where datareserva > '01-05-2018')


/*  check_pagamento */
alter table pagamento add check (formapagamento = 'Dinheiro' or formapagamento = 'Cartao')

INSERT INTO pagamento (id_pagamento,dataPagamento,valor,pago,formaPagamento,id_cliente) VALUES
	(501,'2018-06-05','20.00',True,'Cheque',1)


/*  check_tipo */
alter table tipo add check (nome in ('Comum','Deficiente','Idoso','Moto'))

INSERT INTO tipo (id_tipo, nome) VALUES 
	(5,'Aviao')
