*** Settings ***
Library    SeleniumLibrary
Variables  ../Pageobjects/Locators.py
*** Keywords ***
Select_my_Account
    Click Element  ${Click_my_account}
Change Firstname
    [Arguments]     ${firstname}
    Input Text   ${Enter_Firstname}    ${firstname}
Change Lastname
    [Arguments]    ${lastname}
    Input Text    ${Enter_Lastname}    ${lastname}
Select Save
    Click Element  ${Click_Save}
