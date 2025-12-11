*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Library    JSONLibrary

*** Variables ***
${BASE_URL}    https://webservice.toscacloud.com

*** Test Cases ***
Create Coffee
    [Documentation]    Create a new coffee and store its generated ID

    # Create session
    Create Session    api    ${BASE_URL}    verify=False

    # Headers (server expects Accept=text/plain)
    ${headers}=    Create Dictionary
    ...    Content-Type=application/json
    ...    Accept=text/plain

    # Payload without ID (server generates it)
    ${payload}=    Create Dictionary
    ...    Description=raju raju
    ...    Name=raju bhai

    # Send POST request
    ${response}=    POST On Session    api    /api/v1/Coffees    json=${payload}    headers=${headers}    expected_status=None

    # Check that the response is 200
    Should Be Equal As Integers    ${response.status_code}    200

    # Convert response text to JSON (buffer the ID)
    ${json_result}=    Convert To Dictionary    ${response.text}
    ${coffee_id}=      Set Variable    ${json_result['id']}

    # Store the coffee ID for later tests
    Set Suite Variable    ${coffee_id}
    Log To Console    Created Coffee ID: ${coffee_id}
