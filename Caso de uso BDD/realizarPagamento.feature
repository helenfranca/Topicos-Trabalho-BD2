Feature: Realizando o pagamento da reserva concluida

Scenario: Pagamento efetuado com sucesso
    Given eu tenha escolhido concluir minha reserva
    When eu selecionar a opcao realizar pagamento
    And eu fazer a leitura do código de barras que recebi ao entrar no estacionamento
    And eu escolher um cartão com dados corretos para realizar o pagamento
    Then devo ver a mensagem de pagamento efetivado com sucesso
    And eu serei redirecionado para a tela inicial do sistema
    
Scenario: Pagamento incorreto
    Given eu tenha escolhido concluir minha reserva
    When eu selecionar a opcao realizar pagamento
    And eu fazer a leitura do código de barras que recebi ao entrar no estacionamento
    And eu escolher um cartão com dados incorretos para realizar o pagamento
    Then devo ver a mensagem de cartao incorreto
    And eu serei redirecionado para a tela tela de pagamento de reserva
