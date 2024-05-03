# Automação de Busca de CEP

Projeto de exemplo com funções de automação de testes para a busca de CEP, que:

- Aceita entradas de CEPs válidos e inválidos tanto no site dos [Correios](../testes-automatizados-correios/cypress/scenarios/frontend/cepSearch.feature) quanto via API do [ViaCEP](../testes-automatizados-correios/cypress/scenarios/backend/cepAPI.feature).
- E retorna verdadeiro se os dados do endereço correspondem ao CEP informado e falso caso contrário.

> **Nota:** Este projeto automatiza a funcionalidade de busca de CEP, onde o usuário pode inserir um CEP e, em resposta, visualizar os dados do endereço correspondente.

## Pré-requisitos

É necessário ter o Node.js e o npm instalados para executar este projeto.

> Usei as versões `v14.17.3` e `6.14.13` do Node.js e npm, respectivamente. Sugiro que você use essas versões ou posteriores.

## Instalação

Execute `npm install` (ou `npm i` para a versão curta) para instalar as dependências de desenvolvimento.


## Testes

Execute `npx cypress run` para executar os testes automatizados.

> Após executar os testes, você deverá ver um resultado como este:

```sh
> cypress run

  Busca de CEP no Frontend
  Funcionalidade de busca de CEP no site dos Correios
    ✔ Buscar por CEPs válidos e verificar informações detalhadas (example #1)passed
    ✔ Buscar por CEPs válidos e verificar informações detalhadas (example #2)passed
    ✔ Buscar por CEPs válidos e verificar informações detalhadas (example #3)passed
    ✔ Buscar por um CEP inexistentepassed
    ✔ Buscar por um CEP com formato inválido
    √ Buscar por CEP usando endereço completo (example #1) (4792ms)
    √ Buscar por CEP usando endereço completo (example #2) (5749ms)
    √ Buscar por CEP usando endereço completo (example #3) (3002ms)

  Busca de CEP no Backend
  Funcionalidade de busca de CEP via API ViaCEP
    ✔ Busca por CEPs válidos e existentes (example #1)passed
    ✔ Busca por CEPs válidos e existentes (example #2)passed
    ✔ Busca por CEPs válidos e existentes (example #3)passed
    ✔ Consultar CEP com formato inválido
    ✔ Consultar CEP inexistente e verificar mensagem de erro
    ✔ Alternar entre consulta de CEP válido e inválido
    ✔ Busca por CEPs válidos e verificar detalhes específicos


  15 passando (Xms)
```

## Relatório de Testes

Para gerar o relatório de testes usando a biblioteca Multiple Cucumber Html Reporter, siga estas etapas:

1. Após a execução dos testes automatizados, execute o seguinte comando para gerar o relatório:
   
   ```sh
   node cypress/cucumberReport.js
   ```

> Após receber a mensagem de confirmação no terminal, navegue até a pasta cucumber-report. Em seguida, localize o arquivo [index.html](../testes-automatizados-correios/cypress/cucumber-report/index.html), clique nele com o botão direito do mouse e escolha a opção Reveal in File Explorer para visualizá-lo no explorador de arquivos.


![image](https://github.com/camilalnmouraa/quality-assurance-challenge/assets/124525550/422c05da-c375-475d-95d4-d9ada4e2b2e2)


___

This project was created with 💙 by [Camila](https://www.linkedin.com/in/camilalnmoura/).
