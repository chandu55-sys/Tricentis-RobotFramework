*** Settings ***
Library    SeleniumLibrary
Variables    ../Pageobjects/Locators.py

*** Keywords ***

Open Browser To Registration Page
  #  [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Click Registration link
     Click Element   ${Registration_link}

Select Gender
    [Arguments]    ${gender}
    select radio button    ${select_gender}    ${gender}

Enter FirstName
    [Arguments]    ${firstname}
    Input Text    ${txt_first_name}    ${firstname}

Enter LastName
    [Arguments]    ${lastname}
    Input Text    ${txt_last_name}    ${lastname}

Enter Email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}

Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_password}    ${password}

Enter ConfirmPassword
    [Arguments]    ${confirmpassword}
    Input Text    ${txt_confirmed_password}    ${confirmpassword}

Click Register Button
    Click Element    ${register_button}
