*** Settings ***

*** Keywords ***
usuari amb credencials correctes
    Log  Precondicio credencials ok

usuari introdueix el nom usuari
    Log  Usuari introdueix nom

usuari introduexi la contrasenya
    Log  Usuari introdueix pwd

es mostra el seu perfil d'usuari
    Log  Es mostra el seu perfil


*** Test Cases ***
Usuari accedeix al sistema amb credencials correctes
    [Tags]  gherkin
    Given usuari amb credencials correctes
    When usuari introdueix el nom usuari
    And usuari introduexi la contrasenya
    Then es mostra el seu perfil d'usuari

