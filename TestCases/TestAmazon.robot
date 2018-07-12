*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/common.robot

*** Variables ***
${AMAZON_URL}  https://amazon.es

*** Keywords ***
Anar a Amazon
    Obrir Navegador Maximitzat  ${AMAZON_URL}
    Sleep  1

*** Test Cases ***
Verificar Titol Amazon
    Anar A Amazon
    ${titol}  Get Title
    Should Contain  ${titol}  kk
    Input Text  id=twotabsearchtextbox  Auriculares
    Submit Form
    Sleep  2
    [Teardown]  Close Browser


Accedir al Login a partir access superior
    [Tags]  login
    Anar A Amazon
    #Mouse Over  id:nav-link-accountList
    #Sleep  2
    Click Link  xpath://a[@data-nav-role='signin']
    Sleep  2
    Page Should Contain Element  id:continue
    [Teardown]  Close Browser
