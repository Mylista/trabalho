# TRABALHO 01:  Mylista
Trabalho desenvolvido durante a disciplina de Banco de Dados do Integrado

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Ingridy:ingridy676@gmail.com<br>
Isaque:isaquesiqueiraamaral@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados MyLista
<br>e motivação da escolha realizada. <br>
O nosso projeto foi criado com o intuito de facilitar a vida das pessoas que não tem tempo, já que, no mundo de hoje tudo tem um propósito de ser mais prático e ajudar as pessoas na hora de fazer a sua compra economiazando tempo e dinheiro. O aplicativo a ser desenvolvido tem como ideia principal uma lista de compra formada pelas preferências das pessoas. Nós pretendemos aprofundar nosso conhecimento e criatividade e nos empenhamos para que o resultado seja melhor que o esperado e ultrapasse nossas expectativas. O conceito do software equivale a um sistema de recomendação fundamentado nos produtos frequentemente comprados pelo cliente. No banco de dados do programa será armazenado as informações fornecidas pelo supermercado cliente.
> .
 

### 3.MINI-MUNDO Novo<br>

> O sistema proposto para o aplicativo Mylista conterá as informacões a seguir. Do usuário serão armazenados o nome, estado civil, 
sexo,idade,e-mail, quantidade de pessoas que a compra será destinada, quantas dessas pessoas são crianças ou adultas e o sexo de cada uma 
delas. Dos supermercados serão armazenados o nome, os produtos, o preço dos produtos, codigo do produto,  os produtos em promoção, localização(número do     
corredor, seção e prateleira) e marcas. Se a pessoa estiver comprado no supermercado pela primeira vez o aplicativo sugere uma lista de 
compras que é baseado nas compras de outras pessoas que se encaixam no mesmo perfil com um preço médio. No momento da compra a pessoa 
recebe o preço dos produtos com suas respectivas marcas. Quando o cliente escolhe o que quer comprar, o app fornece a localização do 
produto no supermercado, como o numero do corredor, a seção e a prateleira. No caso em que o usuário não esteja fazendo sua primeira 
compra, o programa fornece uma lista baseado nas últimas compras, colocando na lista todos os produtos que foram comprados pelo cliente 
em sua última visita ao supermercado, sugerindo as marcas que são comprados pelo cliente com frequência e fornecendo também um preço 
médio. O aplicativo também mostra opções de ofertas do dia caso o cliente queira economizar, ele poderá trocar de sua marca preferida 
para uma mais barata. Caso o cliente supermercado atualize os seus produtos, o programador modificará o banco de dados e as novas 
informações serão: a nova localização do produto(se houver mudança), o novo preço e as marcas de promoção do dia (menor preço). Caso o 
cliente consumidor (usuário) atualize as suas preferências, o programador modificará o banco de dados e as novas informações serão: as 
marcas da preferência, a idade (passar dos anos), caso haja uma mudança no estado civil, a integração ou saída de um integrante da 
família e realizará a formação de uma nova lista com base nas novas informações fornecidas. Com as novas informaçoes de ambos clientes 
aplicativo terá a sua tela principal e sua lista atualizadas apresentando as novas informações fornecidas anteriormente. Outro fator 
importante será a avaliação dos produtos do supermercado, onde os usuários farão avaliações (caso queiram) de qualidade, a viçosidade, 
custo x benefício, as informações obtidas serão transmitidas a outros usuários que tem preferências semelhantes como uma sugestão.

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser desenvolvidas. O princípio aqui é pensar na criação da 
interface para identificar possíveis informações a serem armazenadas e/ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/Mylista/trabalho/blob/master/imagens/pagina1.jpg "Supermercado")
(https://marvelapp.com/project/2848998/)


#### 4.1 TABELA DE DADOS DO SISTEMA:
    (https://github.com/Mylista/trabalho/blob/master/arquivos/mode%20sup.xlsx)
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 10 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
>## Marco de Entrega 01 em: (24/03/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 5 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/Mylista/trabalho/blob/master/imagens/Supermercado.png "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]
## Marco de Entrega 01 em: (20/04/2018)<br>
#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    
    USUÁRIO: Tabela que armazena as informações relativas ao usuário
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente do aplicativo.
    NOME: campo que armazena o nome para cada cliente do aplicativo.
    IDADE: campo que armazena a idade para cada cliente do aplicativo.
    SEXO: campo que armazena o sexo para cada cliente do aplicativo.
    ESTADO CIVIL: campo que armazena o estado civil de cada cliente do aplicativo.
    
    
    PRODUTOS: Tabela que armazena as informações relativas aos produtos.
    MARCA: campo que armazena a marca de cada produto do supermercado.
    CÓDIGO: campo que armazena o código de cada produto do supermercado.
    PREÇO: campo que armazena o preço de cada produto do supermercado.
    
    
    SUPERMERCADO: Tabela que armazena as informações relativas ao supermercado.
    CORREDORES: campo que armazena a localiazação dos corredores de cada supermercado.
    PRETELEIRA: campo que armazena a localização das prateleiras de cada supermercado.
    SEÇÃO: campo que armazena a localização de cada seção do supermercado.
    OFERTAS: campo que armazena as ofertas de cada supermercado.
    
    
    DEPENDENTES: Tabela que armazena as informações relativas aos dependentes.
    IDADE: campo que armazena a idade de cada dependente.
    SEXO: campo que armazena o sexo de cada dependente.
    
    
    AVALIAÇÕES: Tabela que armazena as avaliações relativas aos clientes.
    CUSTO_X_BENEFICIO: campo que armazena a avalização com base no custo beneficio de cada produto.
    QUALIDADE: campo que armazena a avalização com base na qualidade de cada produto.
    
    
    PREFERENCIAS:Tabela que armazena as preferencias relativas aos clientes.
    

>## Marco de Entrega 01 em: (12/05/2018)<br>
### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        https://github.com/Mylista/trabalho/blob/master/arquivos/supermercado.mwb
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        https://github.com/Mylista/trabalho/blob/master/arquivos/supermercado.sql
        (criação de tabelas, alterações, etc..)          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.


    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>


#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
        

## Marco de Entrega 02 em: (16/06/2018)<br>
### ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO SEMESTRAL (Mínimo 6 e Máximo 10)<br>
<br>
    Data de Entrega: (30/06/2018)
<br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>

#### 9.11	LISTA DE CODIGOS DAS FUNÇÕES E TRIGGERS<br>
        Detalhamento sobre funcionalidade de cada código.
        a) Objetivo
        b) Código do objeto (função/trigger)
        c) exemplo de dados para aplicação
        d) resultados em forma de tabela/imagem
<br>


#### 9.12	GERACAO DE DADOS (MÍNIMO DE 100 MIL REGISTROS PARA PRINCIPAL RELAÇAO)<br>
        a) principal tabela do sistema deve ter no mínimo 100 mil registros
        b) tabelas diretamente relacionadas a tabela principal 10 mil registros
        c) tabelas auxiliares de relacao multivalorada mínimo de 10 registros
        d) registrar o tempo de inserção em cada uma das tabelas do banco de dados
        e) especificar a quantidade de registros inseridos em cada tabela
        Para melhor compreensão verifiquem o exemplo na base de testes:<br>
        https://github.com/discipbd2/base-de-testes-locadora
        

#### 9.13	Backup do Banco de Dados<br>
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

#### 9.14	APLICAÇAO DE ÍNDICES E TESTES DE PERFORMANCE<br>
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

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
<br>
    Data de Entrega: (Data a ser definida)
<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

    
### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho

### 13	DIFICULDADES ENCONTRADAS PELO GRUPO<br>  

    
>## Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)<br>

       
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
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


        
        


    





