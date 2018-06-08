from random import choice
from faker import Faker

ares = open ('./insertReserva.sql', 'a')
apag = open ('./insertPagamento.sql','a')

ares.write("INSERT INTO reserva (id_reserva,dataReserva,horaReserva,horaChegada,dataSaida,horaSaida,id_cliente,id_vaga,id_pagamento) VALUES\n")
apag.write("INSERT INTO pagamento (id_pagamento,dataPagamento,valor,pago,formaPagamento,id_cliente) VALUES\n")

id_reserva = id_pagamento = id_cliente = id_vaga = 1
f=Faker('pt_BR')
while id_cliente < 101:
	data = str(f.date_this_year('%Y-%m-%d'))
	valor = choice(['10.00','6.00','12.00'])
	pago = choice(['True', 'False'])
	forma = choice(['Cartao','Dinheiro'])
	apag.write("\t("+str(id_pagamento)+",'"+data+"','"+valor+"',"+pago+",'"+forma+"',"+str(id_cliente)+"),\n")
	hora = choice([('08:03','08:25','12:23'),('14:08','14:30','15:32'),('19:24','19:25','22:02'),('21:03','21:03','23:25')])
	ares.write("\t("+str(id_reserva)+",'"+data+"','"+hora[0]+"','"+hora[1]+"','"+data+"','"+hora[2]+"',"+str(id_cliente)+","+str(id_vaga)+","+str(id_pagamento)+"),\n")
	id_cliente += 1
	id_pagamento += 1
	id_reserva += 1
	id_vaga += 1

while id_cliente < 500:
	data = str(f.date_this_year('%Y-%m-%d'))
	valor = choice(['10.00','6.00','12.00'])
	pago = choice(['True', 'False'])
	forma = choice(['Cartao','Dinheiro'])
	apag.write("\t("+str(id_pagamento)+",'"+data+"','"+valor+"',"+pago+",'"+forma+"',"+str(id_cliente)+"),\n")
	hora = choice([('08:03','08:25','12:23'),('14:08','14:30','15:32'),('19:24','19:25','22:02'),('21:03','21:03','23:25')])
	ares.write("\t("+str(id_reserva)+",'"+data+"','"+hora[0]+"','"+hora[1]+"','"+data+"','"+hora[2]+"',"+str(id_cliente)+","+str(id_vaga)+","+str(id_pagamento)+"),\n")
	id_cliente += 1
	id_pagamento += 1
	id_reserva += 1
	id_vaga += 1
# ultima linha
data = str(f.date_this_year('%Y-%m-%d'))
valor = choice(['10.00','6.00','12.00'])
pago = choice(['True', 'False'])
forma = choice(['Cartao','Dinheiro'])
apag.write("\t("+str(id_pagamento)+",'"+data+"','"+valor+"',"+pago+",'"+forma+"',"+str(id_cliente)+");\n")
hora = choice([('08:03','08:25','12:23'),('14:08','14:30','15:32'),('19:24','19:25','22:02'),('21:03','21:03','23:25')])
ares.write("\t("+str(id_reserva)+",'"+data+"','"+hora[0]+"','"+hora[1]+"','"+data+"','"+hora[2]+"',"+str(id_cliente)+","+str(id_vaga)+","+str(id_pagamento)+");\n")
# ultima linha

ares.close()
apag.close()