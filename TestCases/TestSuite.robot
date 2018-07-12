*** Settings ***
Library  SeleniumLibrary
Library  Dialogs
Library  ../External/common.py

*** Variables ***
${BROWSER}  firefox
${URL}      http://google.com

*** Keywords ***
Accio Que Retorna Un Valor
    [Arguments]  ${param1}
    [Return]  Valor retornat ${param1}


*** Test Cases ***
Obrir i tancar navegador
    [Tags]  browser
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Input Text  id:lst-ib  gtd
    Submit Form
    Sleep  2
    ${title} =  Get Title
    Should Contain  ${title}  gtd
    Click Link  xpath://a[contains(text(), 'GTD')]
    Sleep  2
    ${var ret} =  Accio Que Retorna Un Valor  Jordi
    log  Valor retornat per la kw ${var ret}
    Close Browser

Llistar productes Mercadona
    [Tags]  merca
    [Setup]  Open Browser  http://mercadona.es
    Maximize Browser Window
    Execute Manual Step  Hola
    Llistar productes de la web X  o-info
    [Teardown]  Close Browser
