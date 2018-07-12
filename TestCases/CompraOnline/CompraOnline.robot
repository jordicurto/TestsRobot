*** Settings ***

*** Keywords ***

*** Test Cases ***

Usuari no logat pot llistar productes del cataleg
    Given usuari no logat
    When usuari busca procutes de tipus jardineria
    Then es mostren els resultats de cerca de productes rellevants
