*** Settings ***
Library    SeleniumLibrary
Variables  ../Pageobjects/Locators.py

*** Keywords ***
Select Elctronics
    Click Element    ${Click_Electronics}
Select Camera_photo
    Click Element    ${Click_Camera_photo}
Select Phone
    Click Element    ${Click_Phones}
Select Randomly Camers
     @{elements}=    Get WebElements    css:.product-item .product-title a

    ${count}=    Get Length    ${elements}

    Run Keyword If    ${count} == 0    Fail    No product links found on the page!

    ${random_index}=    Evaluate    random.randint(0, ${count}-1)    modules=random

    Click Element    ${elements}[${0}]
Select Randomly Phone
     @{elements}=    Get WebElements    css:.product-item .product-title a

     ${count}=    Get Length    ${elements}

     Run Keyword If    ${count} == 0    Fail    No product links found on the page!

     ${random_index}=    Evaluate    random.randint(0, ${count}-1)    modules=random

     Click Element    ${elements}[${0}]

     Click Element    ${add_to_cart}

Select ship to cart
    Click Element    ${click_ship_to_cart}
Select country
    [Arguments]    ${country}
    Select From List By Label  ${drp_country}  ${country}
Select state
    [Arguments]    ${state}
    Select From List By Label    ${drp_state}    ${state}
Select Checkboxvalue
    select checkbox  ${Select_checkbox}
Select Checkout
    Click Element   ${Click_Checkout}

