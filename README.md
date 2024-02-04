# ProjectoSD


Para realizar este trabalho foi utlizado:
   * dataservice
   * API REST
   * API SOAP
   * Endpoints
   * Local-Entry
   * sequences
   * Base de dados relacional
   * postgresql-42.7.1.jar


****** Data Service *********
Para ter os endpoints e fazer a orquestração foi utilizado um dataservice e criado todos os endpoint necessario. Sendo assim, através de uma conexão com uma base de dados em PostgreSQL e a utilização de um postgresql-42.7.1.jar que contém o driver JDBC para PostgreSQL na versão 42.7.1 e permite conectar a bancos de dados PostgreSQL usando a API JDBC padrão.

http://LAPTOP-N9S5K35D:8290/services/GestaoVooDataService?wsdl


****** API REST *****
API criado:
    
    POST - http://localhost:8290/insert/opInsertProblema
    POST - http://localhost:8290/insert/opInsertTarefas
    POST - http://localhost:8290/insert/InsertPecasManutencao
    GET - http://localhost:8290/insert/notificacao/{id_manutencao}
    POST - http://localhost:8290/insert/statusAeronave
    POST - http://localhost:8290/insert/statusManutencao
    GET - http://localhost:8290/insert/iventario/{estado}
    POST - http://localhost:8290/insert/slot

****** Proxy Service *****
Proxy Service criada:

    http://LAPTOP-N9S5K35D:8290/services/PagamentoReservaProxyServices?wsdl
        * GetDetalhesPassageiroInfo
        * GetDisponibilidadeInfo
        * GetPagamentoInfo
        * GetPassageiroInfo
        * ReservaInfo


Para a utilização dos APIs é necessário, fazer um git clone, para o repositorio local. Apos ter o projecto na sua pasta loca, abrir
o integration studio e importar o projecto

Tendo o projecto, importado, ao rodar, todos os APIs estarão prontos para o consumo.

obs: ao rodar o projecto é necessário adicionar o postgresql-42.7.1.jar indo no embeddemicro integrator server configuration e tambem adicionar o backup da base de dados.



 



   
