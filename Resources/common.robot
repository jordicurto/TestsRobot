*** Keywords ***
Inici Sistema
    [Arguments]  ${param}=TSuite
    log  Inici sistema proves suite 2 amb el param ${param}

Finalitzacio Sistema
    [Arguments]  ${param}=TSuite
    log  Finalitzacio sistema proves suite 2 amb el param ${param}

Obrir Navegador Maximitzat
    [Arguments]  ${url}  ${navegador}=firefox
    Open Browser  ${url}  ${navegador}
    Maximize Browser Window