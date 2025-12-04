*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/My_Account_Customer_info.resource
Resource  ../Resources/LoginKeywords.robot
Resource  ../TestCases/LoginTest.robot
*** Test Cases ***
Change_Account_Details
    Login Test
    Select_my_Account
    Change Firstname    ravi
    Change Lastname     Tester
    Select Save

