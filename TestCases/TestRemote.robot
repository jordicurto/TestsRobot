*** Settings ***
Library  Remote  http://127.0.0.1:8270

*** Variables ***

*** Keywords ***

*** Test Cases ***
Test Case 1
    obrir compte
    ${saldo}  obtenir saldo
    log  El saldo es ${saldo}
    tancar compte