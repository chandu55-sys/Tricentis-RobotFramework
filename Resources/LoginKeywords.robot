*** Settings ***
Library    SeleniumLibrary
Variables  ../Pageobjects/Locators.py

# optional: if you keep locators in a Python module

*** Keywords ***
Open Browser To Login Page
   # [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Login page link
    Click Element    ${Login_link}

Enter Email
    [Arguments]    ${username}
    Input Text    ${txt_user_name}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_password}    ${password}

Click Login Button
    Click Button    ${login_button}
