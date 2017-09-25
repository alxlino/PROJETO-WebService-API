#language: pt

Funcionalidade: Consultar Títulos dos Filmes

Cenário: Consultar todos Títulos dos Filmes

    Quando envio uma solicitação GET para o serviço "http://swapi.co/api/films"
    E solicito apenas a exibição do campo "title"
    Então o código de resposta deve ser igual a "200"