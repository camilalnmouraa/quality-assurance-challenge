# Automação de Busca de CEP

Projeto de exemplo com funções de automação de testes para a busca de CEP, que:

- Aceita entradas de CEPs válidos e inválidos tanto no site dos Correios quanto via API do ViaCEP.
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

  Busca de CEP no Backend
  Funcionalidade de busca de CEP via API ViaCEP
    ✔ Busca por CEPs válidos e existentes (example #1)passed
    ✔ Busca por CEPs válidos e existentes (example #2)passed
    ✔ Busca por CEPs válidos e existentes (example #3)passed
    ✔ Consultar CEP com formato inválido
    ✔ Consultar CEP inexistente e verificar mensagem de erro


  6 passando (Xms)
```

## Relatório de Testes

Para gerar o relatório de testes usando o Allure Report, siga estas etapas:

1. Instale o Allure Command Line Interface (CLI) globalmente via npm, se ainda não estiver instalado:
   
   ```sh
   npm install -g allure-commandline
   ```

2. Após a execução dos testes automatizados, execute o seguinte comando para gerar o relatório:
   
   ```sh
   allure generate --clean && allure open
   ```

> Isso irá gerar o relatório e abrir uma página da web com os resultados dos testes. Certifique-se de ter o Allure Command Line Interface instalado globalmente para poder executar o comando para a geração do relatório.


___

This project was created with 💙 by [Camila](https://www.linkedin.com/in/camilalnmoura/).
