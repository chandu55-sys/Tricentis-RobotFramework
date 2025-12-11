*** Settings ***
Library    SeleniumLibrary
Resource  ../TestCases/LoginTest.robot
Resource  ../TestCases/Account_change.robot
*** Test Cases ***
Login
    [Tags]    Sanity
    Login Test
Change Test
    [Tags]    Sanity    Regression
    Change_Account_Details
