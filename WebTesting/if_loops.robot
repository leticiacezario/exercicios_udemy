*** Settings ***
Documentation        Exercicio if e loops

*** Variables ***
@{LISTA}        0    1    2    3    4    5    6    7    8    9    10

*** Test Cases ***

Mostrar numeros da LISTA
    Log To Console  ${\n}
      FOR  ${NUMERO}   IN  @{LISTA}
        IF  ${NUMERO} == 5
            Logar informações quando o numero for igual a 5
        ELSE IF    ${NUMERO} == 10
            Logar informações quando o numero for igual a 10
        ELSE   
            Logar informações quando o numero for diferente de 5 e 10
        END
    END 


*** Keywords ***
Logar informações quando o numero for igual a 5
    Log     Eu sou o número 5!

Logar informações quando o numero for igual a 10
    Log     Eu sou o número 10!

Logar informações quando o numero for diferente de 5 e 10
    Log     Eu não sou o número 5 e nem o 10