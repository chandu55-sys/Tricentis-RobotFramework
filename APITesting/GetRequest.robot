*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Get Coffees
    Create Session    api    https://webservice.toscacloud.com
    ${headers}=    Create Dictionary
    ...    accept=text/plain

    ${response}=      GET On Session    api    /api/v1/Coffees/11229    headers=${headers}

    Status Should Be  200    ${response}
    Log To Console    ${response.text}
