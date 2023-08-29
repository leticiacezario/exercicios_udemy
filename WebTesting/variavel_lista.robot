*** Settings ***
Documentation   Exemplo de tipo de variável: listando

*** Variable ***

@{MESES}         Janeiro    Fevereiro    Março    Abril    Maio    Junho    Julho    Agosto    Setembro    Outubro    Novembro    Dezembro

*** Test Cases ***
Caso de teste Jan
    Exibir mes Jan

Caso de teste Fev
    Exibir mes Fev

Caso de teste Mar
    Exibir mes Mar

Caso de teste Abr
    Exibir mes Abr

Caso de teste Mai
    Exibir mes Mai

Caso de teste Jun
    Exibir mes Jun

Caso de teste Jul
    Exibir mes Jul

Caso de teste Ago
    Exibir mes Ago

Caso de teste Set
    Exibir mes Set

Caso de teste Out
    Exibir mes Out

Caso de teste Nov
    Exibir mes Nov

Caso de teste Dez
    Exibir mes Dez

*** Keywords ***
Exibir mes Jan
    Log to console  ${MESES[0]}

Exibir mes Fev
     Log to console  ${MESES[1]}

Exibir mes Mar
     Log to console  ${MESES[2]}

Exibir mes Abr
     Log to console  ${MESES[3]}

Exibir mes Mai
     Log to console  ${MESES[4]}

Exibir mes Jun
     Log to console  ${MESES[5]}

Exibir mes Jul
     Log to console  ${MESES[6]}

Exibir mes Ago
     Log to console  ${MESES[7]}

Exibir mes Set
     Log to console  ${MESES[8]}

Exibir mes Out
     Log to console  ${MESES[9]}

Exibir mes Nov
     Log to console  ${MESES[10]}

Exibir mes Dez
     Log to console  ${MESES[11]}
