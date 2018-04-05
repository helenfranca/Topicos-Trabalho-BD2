Feature: Realizar uma reserva
	
Scenario: Vaga reservada com sucesso!
    Given eu tenha escolhido solicitar uma reserva de vaga
    When eu selecionar o estacionamento listado e o tipo da vaga que desejo
    Then devo ver a mensagem “Solicitação realizada com sucesso!”
    And estar dentro do raio de 1Km do estacionamento
    Then devo ver receber o direcionamento para a vaga reservada



