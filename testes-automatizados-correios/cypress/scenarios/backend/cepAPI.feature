Feature: Funcionalidade de busca de CEP via API ViaCEP

    Scenario Outline: Busca por CEPs válidos e existentes
        Given Eu faço uma requisição GET para o CEP "<cep>"
        Then A resposta deve conter o status 200
        And A resposta deve conter os detalhes do CEP

        Examples:
            | cep       |
            | 52071335  |
            | 01001-000 |
            | 40010-010 |

    Scenario: Consultar CEP com formato inválido
        Given Eu faço uma requisição GET para o CEP "asdre"
        Then A resposta deve conter o status 400

    Scenario: Consultar CEP inexistente e verificar mensagem de erro
        Given Eu faço uma requisição GET para o CEP "99999999"
        Then A resposta deve conter o status 200
        And A resposta deve conter uma mensagem de erro "erro: true"



