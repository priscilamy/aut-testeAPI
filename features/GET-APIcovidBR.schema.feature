#language:pt

Funcionalidade: Realizar o GET no endpoint da API Corona(Brazil) e validar o schema do retorno
    Para obter a resposta da API
    Sendo um cliente requisitante
    Posso realizar requisições E validar o schema

    Contexto: Rota da API
        Dado que acesso um endpoint

    Cenario: Obter as informações sobre a Covid no Brasil e validar sua estrutura
        Quando realizo uma requisição usando o método GET
        Então a API deve retornar as informações atualizadas
        E validar o contrato por sua estrutura
        E validar dados do país