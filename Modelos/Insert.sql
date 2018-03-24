insert into cliente(id_cliente,nome,email,senha,cpf)
values (1,'Maria da Graça','mariadagraca@email.com','maria123',12345678910),
       (2,'João Silva','joaosilva@email.com','joao123',32165498709),
       (3,'José Antunes','joseantunes@email.com','jose123',13524635789),
	   (4,'Lara Linda','laralinda@email.com','lara123',98765432111),
	   (5,'Magali Melancia','magali@emai.com','magali123',23453123489),
	   (6,'Joana Ferreira','joanaferreira@email.com','joana123',98712376534),
	   (7,'Moana de Motonui','moanamotonui@email.com','moana123',91827364567),
	   (8,'Maui Semideus','maui@email.com','maui123',23498710023),
	   (9,'Manoela Marlim','manoela@email.com','marlim123',91827364733),
	   (10,'Carol Carine','carol@email.com','carol123',87622234567);
	   
-- datavalidade deve ser AAAA-MM, está desse modo abaixo pois o banco não aceita só ano/mês
insert into cartao(id_cartao,nometitular,datavalidade,cvv,numerocartao) 
values (1,'Maria da Graca','2022-02-01',123,111122223333444),
	   (2,'Joao Silva','2022-03-01',234,2222333344445555),
	   (3,'Jose Antunes','2023-04-01',345,3333444455556666),
	   (4,'Lara Lima','2023-05-01',456,4444555566667777),
	   (5,'Magali Melancia','2024-03-01',567,5555666677778888),
	   (6,'Joana Ferreira','2024-04-01',678,6666777788889999),
	   (7,'Moana de Motonui','2025-02-01',789,7777888899990000),
	   (8,'Maui Semideus','2025-03-01',890,8888999900001111),
	   (9,'Manoela Marlim','2022-06-01',901,9999000011112222),
	   (10,'Carol Carine','2023-06-01',012,0000111122223333);
	   

insert into tipo(id_tipo,nome) 
values (1,'Comum'),
	   (2,'Idoso'),
	   (3,'Deficiente'),
	   (4,'Moto');

insert into localizacao(id_localizacao,longitude,latitude) 
values (1,-40.2876417,-20.3126281),
	   (2,-40.2748785,-20.2401866),
	   (3,-40.2880799,-20.31282148),
	   (4,-40.28898112,-20.31325413);
	   
	   

	   
