#language: pt

Funcionalidade: Consultar Títulos dos Filmes

Cenário: Consultar todos Títulos dos Filmes

    Quando envio uma solicitação GET para o serviço "http://swapi.co/api/films"
    E solicito apenas a exibição do campo "title"
    Então o código de resposta deve ser igual a "200"

@doing
Cenário: Consultar Títulos dos Filmes com Filtros de Diretor e Produtor

    Quando envio uma solicitação GET para o serviço "http://swapi.co/api/films"
    E os filmes são do diretor "George Lucas" e do produtor "Rick McCallum"
    Então o código de resposta deve ser igual a "200"