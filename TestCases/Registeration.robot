*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Registerkeywords.robot

*** Variables ***
#${url}       https://demowebshop.tricentis.com/
#${browser}   chrome

*** Test Cases ***
Registration Test
    [Tags]    regression
    set selenium speed  2s
    Open Browser To Registration Page
    Click Registration link
    Select Gender    M
    Enter FirstName    vijay
    Enter LastName     Tester123
    Enter Email        tester123321@gmail.com
    Enter Password     Tester@123
    Enter ConfirmPassword    Tester@123
    Click Register Button
