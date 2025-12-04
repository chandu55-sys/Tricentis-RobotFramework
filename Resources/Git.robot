*** Settings ***
Library    SeleniumLibrary
Variables  ../Pageobjects/Locators.py

*** Keywords ***
Select Gift_cards
    Click Element    ${Click_Gift_Cards}

Select Randomly_gift_card
    @{elements}=    Get WebElements    css:.product-item .product-title a

    ${count}=    Get Length    ${elements}

    Run Keyword If    ${count} == 0    Fail    No product links found on the page!

    ${random_index}=    Evaluate    random.randint(0, ${count}-1)    modules=random

    Click Element    ${elements}[${0}]
Enter Recipt_name_email
    [Arguments]    ${rp_name}    ${rp_email}
    Input Text    ${Enter_reciptentname}    ${rp_name}
    Input Text    ${Enter_reciptentemail}   ${rp_email}
Add_to_cart
    Click Element    ${add_to_cart}
Select_shipping_cart
    Click Element     ${click_ship_to_cart}
Select Checkboxvalue
    select checkbox  ${Select_checkbox}
Select Checkout
    Click Element   ${Click_Checkout}
Select Billing_address
    Click Element  ${click_billing}

Select Shipping Method
    [Arguments]    ${Shipping_metod}
    Select Radio Button   ${Radio_Shipping_Method}  ${Shipping_metod}

Select Continue_Method
    Click Element    ${click_payment}

Select Credit Card And Fill Details
    [Arguments]    ${dpvalue}    ${name}    ${number}    ${date}    ${month}    ${cr_code}
    Select From List By Value    ${dr_cardname}    ${dpvalue}
    Input Text    ${credit_name}    ${name}
    Input Text    ${creit_number}    ${number}
    Select From List By Value    ${Exp_date}    ${date}
    Select From List By Value    ${Exp_Month}    ${month}
    Input Text    ${car_code}    ${cr_code}


Select Continue_Payment
    Click Element    ${click_continue_payment}

Pay By Cash
    Click Element    ${click_payment}
    Click Element    ${click_continue_payment}

Pay By Credit
    [Arguments]    ${Card_Dropdown_Value}    ${Card_Name}    ${Card_Number}    ${Card_Expiry_Date}    ${Card_Expiry_Month}       ${code}
    Click Element    ${click_payment}
    Select Credit Card And Fill Details    ${Card_Dropdown_Value}    ${Card_Name}    ${Card_Number}    ${Card_Expiry_Date}    ${Card_Expiry_Month}    ${code}
    Select Continue_Payment

Select Confirm_Payment
    Click Element    ${Click_confirm_Payment}



