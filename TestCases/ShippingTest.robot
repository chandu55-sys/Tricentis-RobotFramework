*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/LoginKeywords.robot
Resource   ../TestCases/LoginTest.robot
Resource   ../TestCases/Shippingkeywords.robot


*** Test Cases ***
Login to add to cart
    set selenium speed  1s
    Login Test
    Select Book to add to cart