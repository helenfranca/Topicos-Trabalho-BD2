from faker import Faker
def criaNomeEmail(nome):
	return nome.replace(' ', '')

arq = open('C:/Users/landersonalexandre/Desktop/insertCliente.sql', 'a')

arq.write('INSERT INTO cliente (id_cliente,nome,cpf,email,senha) VALUES\n')

gerador = Faker('pt_BR')
i = 1
_cpf = []
while i < 1000000:
	# gerando dados
	nome = gerador.name()
	cpf = gerador.cpf().replace('.', '').replace('-', '')
	
	if cpf in _cpf:
		continue
	
	email = criaNomeEmail(nome)+str(i)+'@'+gerador.free_email_domain()
	senha = gerador.password(length=10, special_chars=True, digits=True, upper_case=True, lower_case=True)
	# gerando dados
	_cpf.append(cpf)
	arq.write('\t('+str(i)+",'"+nome+"',"+cpf+",'"+email+"','"+senha+"')\n")
	
	i+=1
# ultimo registro
while True:
	cpf = gerador.cpf().replace('.', '').replace('-', '')
	if cpf in _cpf:
		continue
	break
nome = gerador.name()	
email = criaNomeEmail(nome)+str(i)+gerador.free_email_domain()
senha = gerador.password(length=10, special_chars=True, digits=True, upper_case=True, lower_case=True)
# ultimo registro

arq.write('\t('+str(i)+",'"+nome+"',"+cpf+",'"+email+"','"+senha+"');\n")

print(i, 'Registros gerados!')
arq.close()