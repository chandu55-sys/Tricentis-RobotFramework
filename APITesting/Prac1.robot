*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}    https://webservice.toscacloud.com
${ENDPOINT}    /api/v1/Coffees

*** Test Cases ***
Post Test Case
    Create Session    mysession    ${BASE_URL}

    &{headers}=    Create Dictionary
    ...    Content-Type=application/json

    &{payload}=    Create Dictionary  description=ballyaa like very hot coffeee  id=1234    name=NBK

    ${response}=    POST On Session   mysession   ${ENDPOINT}      json=${payload}    headers=${headers}



    Log    Status Code: ${response.status_code}
    Log    Response Body: ${response.text}

    Should Be Equal As Integers    ${response.status_code}    200
    Dictionary Should Contain Key    ${response.json()}    id
    ${id}=    Get From Dictionary    ${response.json()}    id
    Log To Console    ${id}
