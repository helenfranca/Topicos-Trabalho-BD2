Feature: Cadastrar uma nova vaga no sistema

Scenario: Vaga cadastrada com sucesso
    Given eu tenha escolhido cadastrar uma nova vaga no estacionamento
    When eu selecionar o estacionamento referente
    And inserir dados válidos da vaga
    Then devo ver a mensagem “Vaga cadastrada com sucesso!”
    And serei redirecionado para uma nova inserção de vaga