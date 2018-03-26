# TRABALHO 01 : MinhaVaga
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

Protótipo: https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Modelos/Prot%C3%B3tipo.pdf<br>


### 5	MODELO CONCEITUAL<br>
  
#### 5.1 NOTACAO ENTIDADE RELACIONAMENTO
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Modelos/Modelo%20Conceitual.png"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Modelos/Modelo%20Conceitual.png" alt="Alt text" title="Modelo Conceitual" style="max-width:100%;"></a>
    
     5.2 NOTACAO UML (Caso esteja fazendo a disciplina de Projeto)

#### 5.3 DECISÕES DE PROJETO

<!--
Em todo projeto decidimos por seguir a normalidade aplicada a criação de banco de dados.
-->
Decidimos criar a tabela CLIENTE_CARTAO para possibilitar o cliente cadastrar mais de um cartão, e utilizar cartões existentes em outras contas. Com o intuito de relacionar as chaves primária de CLIENTE e CARTAO.

Além disso criamos a tabela Localizacao para unificar as informações latitude e longitude, que possuem formato de dados semelhante presentes nas tabelas de ESTACIONAMENTO e VAGA.

    
#### 5.4 DESCRIÇÃO DOS DADOS 

<b>Tabela CLIENTE</b>: Tabela que armazena as informações relativas ao cliente.<br>
id_cliente: campo que armazena um número de identificação do cliente (chave primária).<br>
nome: campo que armazena o nome do cliente.<br>
cpf: campo que armazena o número de cadastro de Pessoa Física do cliente.<br>
email: campo que armazena o email do cliente.<br>
senha: campo que armazena a senha do cliente para acesso ao sistema.<br>

<b>Tabela RESERVA</b>: Tabela que armazena as informações pertinentes a uma reserva realizada.<br>
id_reserva: campo que armazena um número de identificação da reserva (chave primária).<br>
dataReserva: campo que armazena a data em que a reserva foi realizada.<br>
horaReserva: campo que armazena a hora em que a reserva foi realizada.<br>
horaChegada: campo que armazena a hora em que a reserva foi efetiva, ou seja, que o usuário chegou na vaga.<br>
horaSaida: campo que armazena hora em que a reserva foi terminada, ou seja, que o usuário retirou o carro.<br>
id_cliente: campo que faz referência a um registro da tabela CLIENTE (chave estrangeira).<br>
id_vaga: campo que faz referência a um registro da tabela VAGA (chave estrangeira).<br>
id_pagamento: campo que faz referência a um registro da tabela PAGAMENTO (chave estrangeira).<br>
            
<b>Tabela PAGAMENTO</b>: Tabela que armazena as informações sobre o pagamento realizado.<br>
id_pagamento: campo que armazena um número de identificação do pagamento (chave primária).<br>
dataPagamento: campo que armazena a data em que o pagamento foi feito.<br>
valor: campo que armazena o valor pago pela reserva.<br>
pago: campo boolean que armazena o status do pagamento [True/False].<br>
id_cartao: campo que faz referência a um registro da tabela CARTAO (chave estrangeira).<br>
    
<b>Tabela CARTAO</b>: Tabela que armazena as informações sobre o cartão de crédito informado.<br>
id_cartao: campo que armazena um número de identificação do pagamento (chave primária).<br>
nomeTitular: campo que armazena o nome do titular impresso no cartão de crédito.<br>
numeroCartao: campo que armazena o número impresso no cartão de crédito.<br>
dataValidade: campo que armazena a data de validade do cartão de crédito.<br>
cvv: campo que armazena o numero do código de verificação do cartão.<br>

<b>Tabela CLIENTE_CARTAO</b>: Tabela que armazena as informações sobre a ligação entre o cliente e o cartão por ele cadastrado.<br>
id_Cliente: campo que faz referência a um registro da tabela CLIENTE (chave estrangeira).<br>
id_Cartao: campo que faz referência a um registro da tabela CARTAO (chave estrangeira).<br>
    
<b>Tabela VAGA</b>: Tabela que armazena as informações sobre a vaga.<br>
id_Vaga: campo que armazena o número de identificação da vaga (chave primária).<br>
cobertura: campo boolean que informa se a vaga é coberta ou não [True/False].<br>
status: campo boolean que informa se a vaga está disponível ou não [True/False].<br>
id_Localizacao: campo que faz referência a um registro da tabela LOCALIZACAO (chave estrangeira).<br>
id_Tipo: campo que faz referência a um registro da tabela TIPO (chave estrangeira).<br>
id_Patio: campo que faz referência a um registro da tabela PATIO (chave estrangeira).<br>
    
<b>Tabela TIPO</b>: Tabela que armazena as informações sobre o tipo da vaga.<br>
id_Tipo: campo que armazena um número de identificação do tipo (chave primária).<br>
nome: campo que armazena o nome do tipo [Comum/Idoso/Deficiente/Moto].<br>
    
<b>Tabela LOCALIZACAO</b>: Tabela que armazena as informações de localidade.<br>
id_Localizacao: campo que armazena um número de identificação da localização (chave primária).<br>
longitude: campo que armazena a longitude da localização.<br>
latitude: campo que armazena a latitude da localização.<br>
    
<b>Tabela ESTACIONAMENTO</b>: Tabela que armazena as informações do estacionamento.<br>
id_Estacionamento: campo que armazena um número de identificação do estacionamento (chave primária).<br>
nome: campo que armazena o nome do estacionamento.<br>
valor_Hora: campo que armazena o valor do estacionamento por hora.<br>
capacidade: campo que armazena a capacidade de veículos que o estacionamento comporta.<br>
id_Localizacao: campo que faz referência a um registro da tabela LOCALIZACAO (chave estrangeira).<br>
    
<b>Tabela PATIO</b>: Tabela que armazena informações sobre o pátio.<br>
id_Patio: campo que armazena um número de identificação do pátio (chave primária).<br>
sigla: campo que armazena a sigla do pátio.<br>
id_Estacionamento: campo que faz referência a um registro da tabela ESTACIONAMENTO (chave estrangeira).<br>
<br>

### 6	MODELO LÓGICO<br>
   <a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Modelos/Modelo%20L%C3%B3gico.png"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Modelos/Modelo%20L%C3%B3gico.png" alt="Alt text" title="Modelo Lógico" style="max-width:100%;"></a>
   


### 7	MODELO FÍSICO<br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Modelos/Modelo%20F%C3%ADsico.sql">Modelo Físico</a>

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES

Não utilizamos códigos previamente pronto. Desenvolvemos projeto a partir de situações cotidianas. 

        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a:
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS (ARQUIVO ÚNICO COM):
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/minhaVaga.sql">Script de insert de dados ao banco.</a>

        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	GERACAO DE DADOS (MÍNIMO DE 10 REGISTROS PARA CADA TABELA NO BANCO DE DADOS)<br>

SELECT * from Cliente <br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Cliente.PNG"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Cliente.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>  
<br>

SELECT * from Vaga <br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Vaga.PNG"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Vaga.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>  
<br>

SELECT * from Estacionamento <br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Estacionamento.PNG"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Estacionamento.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>  
<br>

SELECT * from Pagamento <br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Pagamento.PNG"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Pagamento.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>  
<br>

SELECT * from Reserva <br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Reserva.PNG"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Reserva.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>  
<br>

SELECT * from Cartao <br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Cartao.PNG"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Cartao.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>  
<br>

SELECT * from Localizacao <br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Localizacao.PNG"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Localizacao.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>  
<br>

SELECT * from Tipo <br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Tipo.PNG"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Tipo.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>  
<br>

SELECT * from Patio <br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Patio.PNG"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Patio.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>  
<br>

SELECT * from Cliente_Cartao <br>
<a href="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Cliente_Cartao.PNG"><img src="https://github.com/helenfranca/Topicos-Trabalho-BD2/blob/master/Inserts/Cliente_Cartao.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>  
<br>

<br>

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



