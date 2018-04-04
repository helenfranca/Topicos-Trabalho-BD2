Feature: Realizar uma reserva
	
Scenario: Vaga reservada com sucesso!
    Given eu tenha escolhido realizar uma reserva
    When eu selecionar o estacionamento listado
    And selecionar a pátio com as vagas
    And selecionar disponível a vaga desejada
    Then devo ver a mensagem “Vaga reservada com sucesso!”
    And serei redirecionado para um mapa com a rota até a vaga reservada



