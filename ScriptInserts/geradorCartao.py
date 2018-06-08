from faker import Faker
def separaElementoCartao(elementos):
	elementos = elementos.split('\n')[1:-1]
	num, data = elementos[1].split(' ')
	data = data[3:5]+'-'+data[0:2]
	del(elementos[1])
	cvv = elementos[1].split(' ')[1]
	del(elementos[1])
	elementos.append(num)
	elementos.append(data)
	elementos.append(cvv)
	return elementos

arq = open('C:/Users/landersonalexandre/Desktop/insertCartao.sql', 'a')

arq.write('INSERT INTO cartao (id_cartao,nomeTitular,numeroCartao,dataValidade,cvv) VALUES\n')

num=[]

gerador = Faker('pt_BR')

i = 1
while i < 1000000:
	# gerando dados
	_nome,_num,_data,_cvv = separaElementoCartao(gerador.credit_card_full(card_type=None))
	if _num in num:
		continue
	# gerando dados
	num.append(_num)
	
	arq.write('\t('+str(i)+",'"+_nome+"',"+_num+",'"+_data+"-01','"+_cvv+"')\n")
	
	i+=1

# gerando dados
while True:
	_nome,_num,_data,_cvv = separaElementoCartao(gerador.credit_card_full(card_type=None))
	if _num in num:
		continue
	# gerando dados
	num.append(_num)

	arq.write('\t('+str(i)+",'"+_nome+"',"+_num+",'"+_data+"-01','"+_cvv+"');\n")
	break
	
arq.close()