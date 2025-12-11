*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

*** Test Cases ***
Create Coffee
    [Documentation]    Create a new coffee entry with Tricentis API

    # Create a session (disable SSL verification if needed)
    Create Session    api    https://webservice.toscacloud.com    verify=False

    # Headers
    ${headers}=    Create Dictionary
    ...    Content-Type=application/json
    ...    accept=text/plain

    # Payload
    ${payload}=    Create Dictionary
    ...    Description=raju raju
    ...    id=1212121
    ...    name=raju bhai

    # POST request
    ${response}=    POST On Session    api    /api/v1/Coffees    json=${payload}    headers=${headers}

    # Validate response
    Status Should Be    200    ${response}

    # Print response
    Log To Console    ${response.text}
