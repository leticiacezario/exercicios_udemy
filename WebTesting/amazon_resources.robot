*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                            http://www.amazon.com.br
${MENU_ELETRONICOS}               //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}            //h1[contains(.,'Eletrônicos e Tecnologia')]
${TEXTO_HEADER_ELETRONICOS}      Eletrônicos e Tecnologia
${REMOVIDO_CARRINHO}             //h1[@class='a-spacing-mini a-spacing-top-base'][contains(.,'Seu carrinho de compras da Amazon está vazio.')]
${EXCLUIR_PRODUTO}               //input[contains(@value,'Excluir')]
${CARRINHO}                      nav-cart
${ADD_CARRINHO}                  add-to-cart-button



*** Keywords ***  
Abrir o navegador
    Open Browser                    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser    

Acessar a home page do site Amazon.com.br
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains         text=${TEXTO_HEADER_ELETRONICOS}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element                    locator=${MENU_ELETRONICOS}

Verificar se o título da página fica "${TITULO}" 
    Wait Until Page Contains         text=${TITULO}
    Title Should Be                   title=${TITULO}
    
Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[@aria-label='${NOME_CATEGORIA}']

Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${NOME_PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button
    
  
Verificar o resultado da pesquisa, listando o produto "${PRODUTO}"    
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[2]


# GHERKIN STEPS
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática" 

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
     Verificar se o título da página fica "Amazon.com.br : Xbox Series S" 

E um produto da linha "Console Xbox Series X" deve ser mostrado na página
    Verificar o resultado da pesquisa, listando o produto "Console Xbox Series X"

Adicionar o produto "${PRODUTO}" no carrinho
    Click Element                    locator=//img[@alt='${PRODUTO}']
    Wait Until Element Is Visible    locator=${ADD_CARRINHO}
    Click Button                     locator=${ADD_CARRINHO}     

Verificar se o produto "${PRODUTO}" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=//span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold'][contains(.,'Adicionado ao carrinho')]
    Click Element                    locator=${CARRINHO}
    Wait Until Element Is Visible    locator=//span[@class='a-truncate-cut'][contains(.,'${PRODUTO}')]

Remover o produto "Console Xbox Series S" do carrinho
    Click Element                     locator=${EXCLUIR_PRODUTO}
Verificar se o carrinho fica vazio
    Wait Until Element Is Visible     locator=${REMOVIDO_CARRINHO}

Quando adicionar o produto "Console Xbox Series S" no carrinho
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto "Console Xbox Series X"
    Adicionar o produto "Console Xbox Series S" no carrinho
Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

E existe o produto "Console Xbox Series S" no carrinho
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto "Console Xbox Series X"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

Quando remover o produto "Console Xbox Series S" do carrinho
    Remover o produto "Console Xbox Series S" do carrinho

Então o carrinho deve ficar vazio
    Verificar se o carrinho fica vazio
    




