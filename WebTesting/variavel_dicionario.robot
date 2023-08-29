*** Settings ***
Documentation   Exemplo de tipo de variável: listando

*** Variable ***

&{MESES}        Janeiro=31    Fevereiro=28    Março=31    Abril=30    Maio=31    Junho=30    Julho=31    Agosto=30    Setembro=30    Outubro=31    Novembro=30    Dezembro=31

*** Test Cases ***

Imprimir meses do ano
    Log To Console     Mês 01: ${MESES.Janeiro}
    Log To Console     Mês 02: ${MESES.Fevereiro}
    Log To Console     Mês 03: ${MESES.Março}
    Log To Console     Mês 04: ${MESES.Abril}
    Log To Console     Mês 05: ${MESES.Maio}
    Log To Console     Mês 06: ${MESES.Junho}
    Log To Console     Mês 07: ${MESES.Julho}
    Log To Console     Mês 08: ${MESES.Agosto}
    Log To Console     Mês 09: ${MESES.Setembro}
    Log To Console     Mês 10: ${MESES.Outubro}
    Log To Console     Mês 11: ${MESES.Novembro}
    Log To Console     Mês 11: ${MESES.Dezembro}
    
