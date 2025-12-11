*** Settings ***
Library    SeleniumLibrary
Variables  ../Pageobjects/Locators.py
Resource   ../Resources/LoginKeywords.robot








*** Keywords ***
Login Test
   Open Browser To Login Page
    Login page link
    Enter Email     tester123321@gmail.com
    Enter Password  Tester@123
    Click Login Button

