*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    LoginData2.xlsx    sheet_name=Sheet1
Resource   ../Resources/LoginKeywords.robot

*** Variables ***
${url}      https://demowebshop.tricentis.com/login
${browser}  chrome


*** Test Cases ***
Login Test
    [Template]    Login With Credentials
    username       password

*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password}
    Open Browser    ${url}    ${browser}
    Enter Email     ${username}
    Enter Password  ${password}
    Click Login Button
    Page Should Contain    Welcome
    Close Browser
