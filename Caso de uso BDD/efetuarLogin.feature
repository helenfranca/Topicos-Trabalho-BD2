Feature: Login no sistema

Scenario: Login efetuado com sucesso.
    Given eu tenha escolhido efetuar meu login
    When eu preencher os campos de login e senha corretamente
    Then eu devo ver a mensagem de saudação personalizada ser exibida (Olá fulano!)
    And eu devo ser redirecionado para a tela de busca de reservas

Scenario: Login ou senha incorretos.
    Given eu tenha escolhido efetuar meu login
    When eu preencher os campos de login ou senha incorretamente
    Then eu devo ver a mensagem “Login ou senha incorretos”
    And eu devo ser redirecionado para a tela “Esqueci minha senha”

Scenario: Usuário não cadastrado
    Given que eu tenha escolhido efetuar meu login
    When eu preencher os campos de login e senha que não existem no sistema
    Then eu devo ver a mensagem “Usuário não cadastrado”
    And eu devo ser redirecionado para a tela de cadastro
