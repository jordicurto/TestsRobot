*** Settings ***
Library  Telnet
Library  Collections

*** Variables ***
${IP}  telehack.com
${PORT}  23

${CMD}  rand

*** Test Cases ***
Obtenir informacio del sistema conectat
    [Setup]  Open Connection  ${IP}  prompt=user
    Read Until Regexp  ^\.
    ${out}  Execute Command  ${CMD}
    Should Not Be Empty  ${out}
    [Teardown]  Close All Connections