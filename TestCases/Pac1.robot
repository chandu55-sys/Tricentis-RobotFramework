*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/LoginKeywords.robot
Resource   ../TestCases/LoginTest.robot
Resource   ../TestCases/Shippingkeywords.robot
Library    Collections
Library    String
Library    BuiltIn



*** Test Cases ***
Login to add to cart
    set selenium speed  1s
    Login Test
    Select books
    @{elements}=    Get WebElements    css:.product-item .product-title a

    ${count}=    Get Length    ${elements}

    Run Keyword If    ${count} == 0    Fail    No product links found on the page!

    ${random_index}=    Evaluate    random.randint(0, ${count}-1)    modules=random

    Click Element    ${elements}[${random_index}]
