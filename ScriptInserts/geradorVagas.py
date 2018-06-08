from random import choice

arq = open('c:/Users/landersonalexandre/Desktop/insertVaga.sql', 'a')
arq.write('INSERT INTO vaga (id_vaga,id_estacionamento,id_localizacao,id_tipo,status,cobertura) VALUES\n')

id_local = 4
id_vaga = 1
while id_local < 401:
	cobertura = choice(['True', 'False'])
	status = choice(['True', 'False'])
	id_tipo = choice([1,2,3,4])
	arq.write('\t('+str(id_vaga)+',2,'+str(id_local)+","+str(id_tipo)+",'"+status+"','"+cobertura+"'),\n")
	id_local += 1
	id_vaga += 1

while id_local < 801:
	cobertura = choice(['True', 'False'])
	status = choice(['True', 'False'])
	id_tipo = choice([1,2,3,4])
	arq.write('\t('+str(id_vaga)+',2,'+str(id_local)+","+str(id_tipo)+",'"+status+"','"+cobertura+"'),\n")
	id_local += 1
	id_vaga += 1
	
while id_local < 1000:
	cobertura = choice(['True', 'False'])
	status = choice(['True', 'False'])
	id_tipo = choice([1,2,3,4])
	arq.write('\t('+str(id_vaga)+',3,'+str(id_local)+","+str(id_tipo)+",'"+status+"','"+cobertura+"'),\n")
	id_local += 1
	id_vaga += 1

cobertura = choice(['True', 'False'])
status = choice(['True', 'False'])
id_tipo = choice([1,2,3,4])
arq.write('\t('+str(id_vaga)+',3,'+str(id_local)+","+str(id_tipo)+",'"+status+"','"+cobertura+"');")

arq.close()