#App keywordfile
*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/LogIn.robot
Resource  ./PO/Register.robot

*** Variables ***

*** Keywords ***
Go to LandingPage
    LandingPage.Navigate to
    LandingPage.Verify Page Loaded


Go to Register Page
    Register.Select "Register" Page
    Register.Verify Page loaded

Validate RegisterPage
    Register.Validate Page Contents

Go to LogIn
    LogIn.Go to login
    Register.Verify Page loaded

Validate LogIn
    Login.Validate Page Contents




