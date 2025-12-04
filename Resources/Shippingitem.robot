*** Settings ***
Library    SeleniumLibrary
Variables  ../Pageobjects/Locators.py

*** Keywords ***

#Click books
Select books
    Click Element  ${Select_Books}

Select item
    Click Element    ${Click_item}
    Click Element    ${add_to_cart}
Select ship to cart
    Click Element    ${click_ship_to_cart}

#Details

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
#Billing address
Select Billing_address
    Click Element  ${click_billing}
Select Shipping_address
   # Click Element  ${click_save}
    Click Element    ${click_shipping}
#Select Shipping Method
   # [Arguments]    ${Shipping_metod}
    #select radio button   ${Radio_Shipping_Method}  ${Shipping_metod}
Select continue_Shipping
    Click Element    ${click_continue_shipping}

#payment method
Select Payment_Method
    [Arguments]    ${payment_type}
    select radio button    ${Select_payment_radio}    ${payment_type}
Select Continue_Method
    Click Element    ${click_payment}
#Payment_information
Select Continue_Payment
    Click Element    ${click_continue_payment}
Select Confirm_Payment
    Click Element    ${Click_confirm_Payment}




