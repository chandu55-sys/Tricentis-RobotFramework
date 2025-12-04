*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Shippingitem.robot

*** Keywords ***
Select Book to add to cart
    Select books
   # @{elements}=    Get WebElements    css:.product-item .product-title a

    #${count}=    Get Length    ${elements}

    #Run Keyword If    ${count} == 0    Fail    No product links found on the page!

    #${random_index}=    Evaluate    random.randint(0, ${count}-1)    modules=random

    #Click Element    ${elements}[${random_index}]

    @{elements}=    Get WebElements    css:.product-item .product-title a

    ${count}=    Get Length    ${elements}
    Run Keyword If    ${count} == 0    Fail    No product links found on the page!

# Select the FIRST element (index 0)
    Click Element    ${elements}[0]
    Sleep  3


   # Select item
    Select ship to cart
    Select country    Canada
   # Select state    Alaska
    Select Checkboxvalue
    Select Checkout
    Select Billing_address
    Select Shipping_address
   # Select Shipping Method    Ground___Shipping.FixedRate
    #Select continue_Shipping
    #Select Payment_Method    Payments.CashOnDelivery
    #Select Continue_Payment
    #Select Confirm_Payment




