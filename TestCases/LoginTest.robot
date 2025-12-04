*** Settings ***
Library    SeleniumLibrary
Variables  ../Pageobjects/Locators.py
Resource   ../Resources/LoginKeywords.robot


*** Settings ***
Library    SeleniumLibrary
Variables  ../Pageobjects/Locators.py

*** Keywords ***
Login Test
   Open Browser To Login Page
    Login page link
    Enter Email     tester123321@gmail.com
    Enter Password  Tester@123
    Click Login Button

#*** Test Cases ***
#Login Test
 #   Open Browser To Login Page
  #  Login page link
   # Enter Email     tester123321@gmail.com
   # Enter Password  Tester@123
    #Click Login Button

