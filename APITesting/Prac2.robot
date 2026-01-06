*** Settings ***
Library  SeleniumLibrary
Library    Collections

*** Test Cases ***
Test
    @{numbers}=     Create List      1  2    3      4
    Log To Console    ${numbers}[1]
Loop example
    @{fruties}=     Create List     banna   apple   orange  pineapple

    FOR    ${fruite}    IN    @{fruties}
        Log To Console  ${fruite}

    END


Append to list
    @{items}=    Create List     A   B
    Append To List   ${items}    C
    Log To Console    ${items}

    ${length}=    Get Length    ${items}
    Log To Console    ${length}


