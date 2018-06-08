from faker import Faker

gerador = Faker('pt_BR')

arq = open('C:/Users/20151bsi0134/Desktop/insertLocal.sql', 'a')
arq.write('INSERT INTO localizacao (id_localizacao,latitude,longitude) VALUES\n')

i=1
while i < 1000:
	# gerando dados
	latitude = gerador.latitude()
	longitude = gerador.longitude()
	# gerando dados
	
	arq.write('\t('+str(i)+','+str(latitude)+','+str(longitude)+'),\n')
	
	i+=1

# gerando dados
latitude = gerador.latitude()
longitude = gerador.longitude()
# gerando dados

arq.write('\t('+str(i)+','+str(latitude)+','+str(longitude)+');\n')
arq.close()