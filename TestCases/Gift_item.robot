*** Settings ***
Library    SeleniumLibrary
Resource  ../TestCases/LoginTest.robot
Resource  ../Resources/Git.robot

Resource    ../TestCases/LoginTest.robot

*** Variables ***
${Payment_Method}              Payments.CashOnDelivery    # Change to Cash to test cash scenario
${Card_Dropdown_Value}         Visa
${Card_Name}                   John Doe
${Card_Number}                 18218
${Card_Expiry_Date}            1
${Card_Expiry_Month}           2025
${code}                        1234
${email}                       kumar@gmil.com
${name}                        kumar
*** Test Cases ***
add to Cart Gift
   Set Selenium speed    2seconds
    Login Test
    Select Gift_cards
    Select Randomly_gift_card
    Enter Recipt_name_email     Kumar   rp_email=kumar@gmil.com
    Add_to_cart
    Wait Until Element Is Not Visible    css=.content    timeout=10s
    Click Element    css=.cart-label

    Select_shipping_cart
    Select Checkboxvalue
    Select Checkout
    Select Billing_address
    Select Shipping Method    ${Payment_Method}

    Run Keyword If    ${Payment_Method} == 'Payments.CashOnDelivery'    Pay By Cash
    ...    ELSE IF    ${Payment_Method} == 'Payments.Manual'    Pay By Credit
    ...    ${Card_Dropdown_Value}    ${Card_Name}    ${Card_Number}    ${Card_Expiry_Date}    ${Card_Expiry_Month}    ${code}

    Select Confirm_Payment
