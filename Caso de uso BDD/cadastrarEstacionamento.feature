Feature: Cadastrar um novo estacionamento no sistema

Scenario: Estacionamento cadastrado com sucesso
    Given eu tenha escolhido cadastrar um estacionamento
    When eu inserir dados válidos
    Then devo ver a mensagem “Estacionamento cadastrado com sucesso!”
    And serei redirecionado para a tela inicial do minhaVaga



