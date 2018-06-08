arq = open('C:/Users/landersonalexandre/Desktop/insertCliente_Cartao.sql', 'a')

arq.write('INSERT INTO cliente_cartao (id_cliente,id_cartao) VALUES\n')

id_cliente = 1
id_cartao = 1
while id_cartao < 800001:
	arq.write('\t('+str(id_cliente)+','+str(id_cartao)+'),\n')
	id_cliente += 1
	id_cartao += 1

id_cartao = 1
while id_cartao < 200000:
	arq.write('\t('+str(id_cliente)+','+str(id_cartao)+'),\n')
	id_cliente += 1
	id_cartao += 1

arq.write('\t('+str(id_cliente)+','+str(id_cartao)+');\n')