*** Settings ***
Documentation    Exercicio de Argumentos e Retornos
Library          String
*** Variables ***
&{PESSOA}   nome=Leticia   sobrenome=Cezario

*** Test Cases ***

Criar um email aleatorio
    ${EMAIL}     Keyword para chamar argumentos e criar email aleatorio    ${PESSOA.nome}    ${PESSOA.sobrenome}
    Log To Console     ${EMAIL}

*** Keywords ***
Keyword para chamar argumentos e criar email aleatorio
    [Arguments]                ${NOME}  ${SOBRENOME}
    ${PALAVVRA_ALEATORIA}      Generate Random String
    ${EMAIL_GERADO}            Set Variable    ${NOME}${SOBRENO ME}${PALAVVRA_ALEATORIA}@testerobot.com
    [Return]                    ${EMAIL_GERADO}


