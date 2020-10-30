
# Automação - Livelo

Repositório com finalidade de realizar automação com o objetivo de adicionar um produto no carrinho.

## Requisitos

-   [Ruby 2.6.5](https://www.ruby-lang.org/en/documentation/installation/)
    
-   Bundler
    
-   [Chrome Driver Versão 86](https://sites.google.com/a/chromium.org/chromedriver/downloads)
    
    -   `wget CHROMEDRIVER_OS_BITS.zip`
    -   `unzip CHROMEDRIVER_OS_BITS.zip`
    -   `sudo mv chromedriver /usr/bin/chromedriver`
    -   `sudo chown root:root /usr/bin/chromedriver`
    -   `sudo chmod +x /usr/bin/chromedriver`
-   Google Chrome Versão 86
    

## Setup

Neste tópico iremos aprender a fazer o setup do nosso projeto. É necessário realizar o clone do projeto e instalar todas as  _gems_  necessárias para execução dos testes.

Na sua pasta de projetos, execute:

-   Caso utilize HTTPS:  `git clone https://github.com/ayslanmarcelino/livelo-automation.git`
-   Caso utilize SSH:  `git clone git@github.com:ayslanmarcelino/livelo-automation.git`
-   Após clonar, entre na pasta do projeto e rode o seguinte comando:  `bundle install`

Durante o  `bundle install`, se você receber o erro  `An error occurred while installing capybara-webkit (1.15.1)`, siga  [este tutorial](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit)  para instalar as dependências exigidas pelo cabybara-webkit gem.

## Execução dos Testes

Para rodar todos os testes, basta rodar o seguinte comando dentro do projeto:

-   `cucumber`

Por padrão os testes estão sendo executados abrindo o navegador, para rodar com o navegador em background (apenas no terminal) altere a opção no arquivo  `env.rb`.

```
config.default_driver = :selenium_chrome #roda no navegador

config.default_driver = :selenium_chrome_headless #roda com o navegador em background
```

OBS.: Para rodar algum teste em específico, utilize o seguinte comando:

-   `cucumber -t @name_tag`  ou  `cucumber features/specifications/nome_da_feature.feature`

Utilizar  _tag_  é uma ótima maneira de organizar  _features_  e cenários, sempre defina  _tags_  para os testes que estiver responsável.

## Estrutura de Pastas

A estrutura criada funciona da seguinte forma:

-   **features**: Armazena os dados dos testes.
-   **features/pages**: Armazena os arquivos  `.rb`  com a implementação das pages utilizando o padrão "Page Objects", pela Gem SitePrism, uma DSL (Domain Specific Language) criada para facilitar a criação de page objects para testes automatizados em Ruby, utilizando o Capybara.
-   **features/reports**: Armazena os relatórios das execuções dos testes.
-   **features/specifications**: Armazena as especificações dos testes (arquivos Gherkin).
-   **features/step_definitions**: Armazena os arquivos com a implementação dos passos da automação.
-   **features/support**: Armazena os arquivos  `env.rb`  e  `hooks.rb`  que servem como apoio para as configurações dos testes.

## Passos para criação dos testes

De maneira geral e macro, para criação dos testes siga os seguintes passos:

-   **Passo 1**: Escreva os cenários de teste utilizando a sintaxe do Cucumber seguindo os princípios do BDD em um arquivo  `.feature`  dentro da pasta  `feature/specifications`.
-   **Passo 2**: Rode o comando  `cucumber`  no terminal dentro da pasta raiz do projeto, e copie os passos gerados automaticamente pela ferramenta e cole em um arquivo  `.rb`  dentro da pasta  `features/step_definitions`.
-   **Passo 3**: Crie a page seguindo o padrão "Page Object" utilizando o SitePrism dentro da pasta de  `features/pages`, identificando todos os itens e/ou atributos da página e os métodos que serão necessários para realização dos testes.
-   **Passo 4**: Implemente os  _Steps_  do arquivo  `.rb`  na pasta  `features/step_definitions`  utilizando o capybara.
-   **Passo 5**: Rode o comando  `cucumber`  no terminal dentro da pasta raiz do projeto, e verifique se todos os testes estão rodando corretamente.