Feature: Gerir disponibilidade de vagas

Scenario: Vaga reservada pelo usuário
    Given uma vaga foi reservada por um usuário
    Then a vaga torna-se indisponível para uma nova reserva, até que seja liberada
	
Scenario: Vaga com pagamento efetuado
    Given que uma reserva foi paga e a vaga liberada
    Then a vaga torna-se disponível para uma nova reserva

