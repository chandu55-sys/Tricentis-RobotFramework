*** Settings ***
Library    SeleniumLibrary
Variables  ../Pageobjects/Locators.py
Resource   ../Resources/LoginKeywords.robot
Test Template    Login Test
Library    DataDriver    ../TestData/Logintest.xlsx    sheet_name=Sheet1




*** Test Cases ***
ExcelTest   ${username}    ${password}









*** Keywords ***
Login Test
    [Arguments]    ${username}    ${password}
    Open Browser To Login Page
    Login page link
    Enter Email       ${username}
    Enter Password    ${password}
    Click Login Button

