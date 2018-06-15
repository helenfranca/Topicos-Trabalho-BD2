Feature: Realizando o pagamento da reserva concluida

Scenario: Pagamento efetuado com sucesso
    Given eu tenha escolhido concluir minha reserva
    When eu selecionar “Realizar pagamento”
    And fazer a leitura do código de barras que recebi ao entrar no estacionamento
    And escolher um cartão com dados corretos para realizar o pagamento
    Then devo ver a mensagem  "Pagamento efetivado com sucesso! Você tem 'X' minutos para liberar a vaga"
    And serei redirecionado para a tela inicial do sistema
    
Scenario: Pagamento incorreto
    Given eu tenha escolhido concluir minha reserva
    When eu selecionar “Realizar pagamento”
    And fazer a leitura do código de barras que recebi ao entrar no estacionamento
    And escolher um cartão com dados incorretos para realizar o pagamento
    Then devo ver a mensagem  "Cartão incorreto!"
    And serei redirecionado para a tela de realizar pagamento
