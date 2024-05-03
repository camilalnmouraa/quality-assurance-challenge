Feature: API de consulta de CEP

    Scenario Outline: Consultar CEP válido e receber dados corretos
        Given Que eu tenho um endpoint "/ws/<cep>/json/"
        When Eu faço uma requisição GET para o CEP "<cep>"
        Then A resposta deve conter o status 200
        And A resposta deve conter:
            | campo      | valor        |
            | cep        | <cep>        |
            | logradouro | <logradouro> |
            | bairro     | <bairro>     |
            | localidade | <cidade>     |
            | uf         | <estado>     |

        Examples:
            | cep       | logradouro        | bairro   | cidade         | estado |
            | 01001-000 | Praça da Sé       | Sé       | São Paulo      | SP     |
            | 30170-010 | Rua dos Tupis     | Centro   | Belo Horizonte | MG     |
            | 40010-010 | Avenida da França | Comércio | Salvador       | BA     |

    Scenario: Consultar CEP inexistente
        Given Que eu tenho um endpoint "/ws/00000-000/json/"
        When Eu faço uma requisição GET para o CEP "00000-000"
        Then A resposta deve conter o status 400
        And A resposta deve conter uma mensagem de erro "CEP inválido ou não encontrado"

    Scenario: Consultar CEP com formato inválido
        Given Que eu tenho um endpoint "/ws/abcd/json/"
        When Eu faço uma requisição GET para o CEP "abcd"
        Then A resposta deve conter o status 400
        And A resposta deve conter uma mensagem de erro "Formato de CEP inválido"