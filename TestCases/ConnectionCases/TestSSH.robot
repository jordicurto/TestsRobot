*** Settings ***
Library  SSHLibrary

Suite Setup  Open Connection And Log In
Suite Teardown  Close All Connections

*** Variables ***
${HOST}  127.0.0.1
${USERNAME}  nethack
${PASSWORD}  test


*** Keywords ***
Open Connection And Log In
    Open Connection  ${HOST}
    Login  ${USERNAME}  ${PASSWORD}


*** Test Cases ***
Executar Commanda i comprovar resultat
    ${out}=  Execute Command  echo Hola
    should be equal  ${out}  Hola
