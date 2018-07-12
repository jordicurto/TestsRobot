*** Settings ***
Documentation  Proves d'escenaris de Suite2
...            per a verificar el coreecte
...            access al sistema

Resource  ../Resources/common.robot
Resource  ../Resources/data.robot

Library  ../External/common.py

Test Setup  Inici Sistema
Test Teardown  Finalitzacio Sistema

*** Variables ***
${nom site}  Amazon

*** Keywords ***
KW1
    ${result}=  py test
    log  KW1 = ${result}

KW2
    log  KW2

KW3
    log  KW3

Keyword Amb Un Argument ${arg1}
    Log  He rebut l'argument ${arg1}

Accio Que Rep Un Parametre I En Funcio Realitza A O B
    [Arguments]  ${edat}
    run keyword if  ${edat} > 18  KW1
    ...             ELSE IF  ${edat} == 18  KW3
    ...             ELSE  KW2


*** Test Cases ***
Test Case 1
    [Setup]  Inici Sistema  TCase
    log  El Test Case 1 ha començat ${Una Url}
    [Teardown]  Finalitzacio Sistema  TCase

Test Case 2
    log  El Test Case 2 ha començat  console=true


Test Case 3
    Accio Que Rep Un Parametre I En Funcio Realitza A O B  15
    Accio Que Rep Un Parametre I En Funcio Realitza A O B  18
    Accio Que Rep Un Parametre I En Funcio Realitza A O B  20
    Una keyword per a Python

Test Case 4
    [Template]  Keyword Amb Un Argument ${arg}
    Hola
    Adeu
    KKK
    dkasñ




