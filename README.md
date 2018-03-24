# TRABALHO 01 : Título do trabalho
Trabalho desenvolvido durante a disciplina de BD

    O referido projeto poderá ser:
        a) Um novo sistema/projeto 
        b) Uma expansão de sistema/projeto previamente desenvolvido em disciplinas anteriores 
        (ex: Expansão dos módulos do sistema desenvolvidos em BD1 - incremento mínimo de 50% nos 
        requisitos/complexidade)
        c) Nas avaliações parciais do professor, o grupo deverá anotar todas as observaçoes que forem feitas pelo professor 
        e pelo proprio grupo, enviar uma cópia das atividades por e-mail para o grupo e postar imediatamente estas observaçõe
        como tarefas a serem realizadas como tarefas por meio do gerenciador de projetos do git.
        d) Todas as tarefas devem ser realizadas e deve-se atentar para distribuição igualitária de atividades levando-se 
        em consideração o peso destas.
        e) Os tópicos numerados para cada atividade no devem ser removidos do trabalho. Entretanto, os conteúdos de exemplo 
        em cada tópico devem ser substituídos pelo conteúdo do trabalho em desenvolvimento.
        f) sprints de entrega serão quinzenais ou mensais definidos em aula juntamente com o professor
    
    OBS Importantes: 
        a) Os projetos/sistemas propostos serão validados pelo professor e pela turma
        b) Se possível é interessante que os novos sistemas estejam correlacionados com alguma área 
        previamente estudada pelo aluno
        c) Caso dependa de alguma instituição/parceiro externo, a base de dados e informações pertinentes 
        a esta devem ser obtidas no prazo de até 15 dias apos aprovação da proposta do trabalho 
        (caso contrário, nova proposta deverá ser apresentada a turma implicando logicamente em um prazo 
        mais curto para realização das atividades e conclusão do trabalho)
    
DICA: 
    O kickstart normalmente lança inovaçôes em termos de Sofwares e Apps, portanto pode ser interessante 
    olhar os lançamentos recentes para incrementar as possibilidades e aguçar a criatividade, o que pode 
    auxiliar o grupo com novas ideias na solução proposta. Acesse os links abaixo do para explorar sobre apps e softwares no Kickstarter.
    <br>
    https://www.kickstarter.com/discover/categories/technology/software
    <br>
    https://www.kickstarter.com/discover/categories/technology/apps
# Sumário

### 1	COMPONENTES<br>
Helen França Medeiros - helenfranca93@gmail.com<br>
Maria Luiza de Freitas Ianne - malufrt@hotmail.com<br>
Landerson Morais Alexandre - landerson.jbv@gmail.com<br>

### 2	INTRODUÇÃO E MOTIVAÇAO<br>

Este documento contém a especificação do projeto do banco de dados MinhaVaga e motivação da escolha realizada. <br>

Observando o tempo que as pessoas gastam ao procurar uma vaga em estacionamentos, e muitas vezes não encontram disponíveis, o app MinhaVaga é um projeto para tornar essa procura mais eficiente. Com o aplicativo é possível verificar vagas disponíveis, reserva-lás, e realizar o pagamento. 

     
### 3	MINI-MUNDO<br>

O MinhaVaga é um sistema mobile para controle de estacionamento, que conta com uma série de sensores, com o propósito de otimizar o tempo que as pessoas gastam ao procurarem por vagas em locais que ofereçam serviço de estacionamento como em shoppings e supermercados. Mostrando, em tempo real, as vagas disponíveis juntamente com sua localização dentro do estacionamento. Além disso, o sistema proporciona um controle de fluxo e o tempo de permanência dos carros, podendo gerar com esses dados, informações para verificar a demanda do estacionamento e se é viável aumentar sua capacidade, entre outros avanços. 
 
Com o app é possível verificar as vagas e assim reservar uma disponível. Na reserva da vaga o usuário terá um tempo de 10 minutos para que sua escolha seja efetivada. Caso ele saia da vaga nesse período, a vaga previamente escolhida torna-se disponível, e uma mensagem é exibida para que o usuário informe a nova vaga escolhida. Ao reservar a vaga, é exibido uma rota indicando como chegar até ela, além disso um led indicando que ela está ocupada é aceso.                                              

O app inclui pagamento via cartão além do comum nas bilheterias, sendo assim o usuário deve escanear o código de barras do ticket para efetivar o pagamento. Além de apresentar um plano de pagamento diferenciado, de forma mensal para aqueles motoristas que utilizam do estacionamento todos os dias. Após o pagamento, é iniciado um contador regressivo informando o tempo que o usuário tem para deixar a vaga. Caso ele não libere a vaga no tempo estipulado, o sistema o notifica e volta a contar como uma nova reserva.

No caso do cliente que não faz uso do aplicativo, a vaga estacionada é marcada como ocupada por meio do sensor instalado. Assim mantendo o controle de vagas atualizado no aplicativo em tempo real.
 <br>

### 4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd2/topicos-trabalho/blob/master/balsamiq.png?raw=true "Title")


### 5	MODELO CONCEITUAL<br>
  
#### 5.1 NOTACAO ENTIDADE RELACIONAMENTO
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Modelos/Modelo%20Conceitual.png"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Modelos/Modelo%20Conceitual.png" alt="Alt text" title="Modelo Conceitual" style="max-width:100%;"></a>
    
     5.2 NOTACAO UML (Caso esteja fazendo a disciplina de Projeto)

#### 5.3 DECISÕES DE PROJETO

    Em todo projeto decidimos por seguir a normalidade aplicada a criação de banco de dados.
    
#### 5.4 DESCRIÇÃO DOS DADOS 
            
    CLIENTE: Tabela que armazena as informações relativas ao cliente
    Id_cliente: campo que armazena um número de identificação do cliente
    Nome: campo que armazena o nome do cliente
    CPF: campo que armazena o número de Cadastro de Pessoa Física do cliente
    Email: campo que armazena o email do cliente
    Senha: campo que armazena a senha do cliente para acesso ao sistema
    
    RESERVA:Tabela que armazena as informações pertinentes a uma reserva realizada
    Id_reserva: campo que armazena um número de identificação da reserva
    DataReserva: campo que armazena a data em que a reserva foi realizada
    HoraReserva: campo que armazena a hora em que a reserva foi realizada
    HoraChegada: campo que armazena a hora em que a reserva foi efetiva, ou seja, que o usuário chegou na vaga
    HoraSaida: campo que armazena hora em que a reserva foi terminada, ou seja, que o usuário retirou o carro
            
    PAGAMENTO: Tabela que armazena as informações sobre o pagamento realizado
    Id_pagamento: campo que armazena um número de identificação do pagamento
    DataPagamento: campo que armazena a data em que o pagamento foi feito
    Valor: campo que armazena o valor pago pela reserva
    Pago: campo boolean que armazena o status do pagamento [True/False]
    
    CARTAO: Tabela que armazena as informações sobre o cartão de crédito informado
    Id_cartao: campo que armazena um número de identificação do pagamento
    NomeTitular: campo que armazena o nome do titular impresso no cartão de crédito
    NumeroCartao: campo que armazena o número impresso no cartão de crédito
    DataValidade: campo que armazena a data de validade do cartão de crédito
    Cvv: campo que armazena o numero do código de verificação do cartão
    
    CLIENTE_CARTAO: Tabela que armazena as informações sobre a ligação entre o cliente e o cartão por ele cadastrado
    Id_Cliente: campo que armazena o id do cliente [Extrangeira - Tabela Cliente]
    Id_Cartao: campo que armazena o id do cartão [Extrangeira - Tabela Cartao]
    
    VAGA: Tabela que armazena as informações sobre a vaga
    Id_Vaga: campo que armazena o número de identificação da vaga
    Cobertura: campo boolean que informa se a vaga é coberta ou não [True/False]
    Status: campo boolean que informa se a vaga está disponível ou não [True/False]
    Id_Localizacao: campo que armazena o id da localização da vaga [Extrangeira - Tabela Localizacao]
    Id_Tipo: campo que armazena o id do tipo de vaga [Extrangeira - Tabela Tipo]
    Id_Patio: campo que armazena o id do patio em que a vaga está instalada [Extrangeira - Tabela Patio]
    
    TIPO: Tabela que armazena as informações sobre o tipo da vaga
    Id_Tipo: campo que armazena um número de identificação do tipo
    Nome: campo que armazena o nome do tipo [Comum/Idoso/Deficiente/Moto]
    
    LOCALIZACAO: Tabela que armazena as informações de localidade
    Id_Localizacao: campo que armazena um número de identificação da localização
    Longitude: campo que armazena a longitude da localização
    latitude: campo que armazena a latitude da localização
    
    ESTACIONAMENTO: Tabela que armazena as informações do estacionamento
    Id_Estacionamento: campo que armazena um número de identificação do estacionamento
    Nome: campo que armazena o nome do estacionamento
    Valor_Hora: campo que armazena o valor do estacionamento por hora
    Capacidade: campo que armazena a capacidade de veículos que o estacionamento comporta
    Id_Localizacao: campo que armazena o id da localização do estacionamento [Extrangeira - Tabela Localizacao]
    
    PATIO: Tabela que armazena informações sobre o pátio
    Id_Patio: campo que armazena um número de identificação do pátio
    Sigla: campo que armazena a sigla do pátio
    Id_Estacionamento: campo que armazena o id do estacionamento que o pátio pertence [Extrangeira - Tabela Estacionamento]


### 6	MODELO LÓGICO<br>
   <a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Modelos/Modelo%20L%C3%B3gico.png"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Modelos/Modelo%20L%C3%B3gico.png" alt="Alt text" title="Modelo Lógico" style="max-width:100%;"></a>
   


### 7	MODELO FÍSICO<br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Modelo%20F%C3%ADsico.sql">Modelo Físico</a>


### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a:
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS (ARQUIVO ÚNICO COM):
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	GERACAO DE DADOS (MÍNIMO DE 10 REGISTROS PARA CADA TABELA NO BANCO DE DADOS)<br>

## Data de Entrega: (18/09/2017)

<br>
OBS: Incluir para os tópicos 9.2 e 9.3 as instruções SQL + imagens (print da tela) mostrando os resultados.<br>

#### 9.2	SELECT DAS TABELAS COM PRIMEIROS 10 REGISTROS INSERIDOS <br> 
    Data de Entrega: (Data a ser definida)
<br>

#### 9.3	SELECT DAS VISÕES COM PRIMEIROS 10 REGISTROS DA VIEW <br>
        a) Descrição da view sobre que grupos de usuários (operacional/estratégico) <br>
        e necessidade ela contempla.
        b) Descrição das permissões de acesso e usuários correlacionados (após definição <br>
        destas características)
    Data de Entrega: (Data a ser definida)
        c) as funcionalidades informadas no minimundo ou nos mockups(protótipos), que representarem 
        views do sistema (relatórios, informações disponíveis para os usuários, etc) devem estar 
        presentes aqui. 
<br>

#### 9.4	LISTA DE CODIGOS DAS FUNÇÕES, ASSERÇOES E TRIGGERS<br>
        Detalhamento sobre funcionalidade de cada código.
        a) Objetivo
        b) Código do objeto (função/trigger/asserção)
        c) exemplo de dados para aplicação
        d) resultados em forma de tabela/imagem
<br>

#### 9.5	Administração do banco de dados<br>
        Descrição detalhada sobre como serão executadas no banco de dados as <br>
        seguintes atividades.
        a) Segurança e autorização de acesso:
        b) Estimativas de aquisição de recursos para armazenamento e processamento da informação
        c) Planejamento de rotinas de manutenção e monitoramento do banco
        d) Plano com frequencia de análises visando otimização de performance
<br>

#### 9.6	GERACAO DE DADOS (MÍNIMO DE 1,5 MILHÃO DE REGISTROS PARA PRINCIPAL RELAÇAO)<br>
        a) principal tabela do sistema deve ter no mínimo 1,5 milhão de registros
        b) tabelas diretamente relacionadas a tabela principal 100 mil registros
        c) tabelas auxiliares de relacao multivalorada mínimo de 10 registros
        d) registrar o tempo de inserção em cada uma das tabelas do banco de dados
        e) especificar a quantidade de registros inseridos em cada tabela
        Para melhor compreensão verifiquem o exemplo na base de testes:<br>
        https://github.com/discipbd2/base-de-testes-locadora
        


#### 9.7	Backup do Banco de Dados<br>
        Detalhamento do backup.
        a) Tempo
        b) Tamanho
        c) Teste de restauração (backup)
        d) Tempo para restauração
        e) Teste de restauração (script sql)
        f) Tempo para restauração (script sql)
<br>

Data de Entrega: (Data a ser definida)
<br>

#### 9.8	APLICAÇAO DE ÍNDICES E TESTES DE PERFORMANCE<br>
    a) Lista de índices, tipos de índices com explicação de porque foram implementados nas consultas 
    b) Performance esperada VS Resultados obtidos
    c) Tabela de resultados comparando velocidades antes e depois da aplicação dos índices (constando velocidade esperada com planejamento, sem indice e com índice Vs velocidade de execucao real com índice e sem índice).
    d) Escolher as consultas mais complexas para serem analisadas (consultas com menos de 2 joins não serão aceitas)
    e) As imagens do Explain devem ser inclusas no trabalho, bem como explicações sobre os resultados obtidos.
    f) Inclusão de tabela mostrando as 10 execuções, excluindo-se o maior e menor tempos para cada consulta e 
    obtendo-se a media dos outros valores como resultado médio final.
<br>
    Data de Entrega: (Data a ser definida)
<br>   

#### 9.9	ANÁLISE DOS DADOS COM ORANGE<br>    
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) aplicação de algoritmos e interpretação dos resultados
        c) atualização da documentação do trabalho incluindo a mineração de dados
<br>
    Data de Entrega: (Data a ser definida)
<br>

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO/ SLIDES E ENTREGA FINAL<br>
<br>
    Data de Entrega: (Data a ser definida)
<br>

### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>  

       
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")



