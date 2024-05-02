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
    ✔ deve retornar verdadeiro se o endereço corresponder ao CEP informado
    ✔ deve retornar falso se o endereço não corresponder ao CEP informado
    ✔ deve retornar verdadeiro se a formatação do CEP for validada corretamente

  Busca de CEP via API
    ✔ deve retornar verdadeiro se a API retornar os dados corretos para o CEP
    ✔ deve retornar falso se a API não encontrar o CEP
    ✔ deve retornar falso se o formato do CEP for inválido

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
