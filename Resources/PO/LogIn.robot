*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_LINK} =  css=body > nav > ul > li:nth-child(2) > a
${SIGNIN_H1} =  css=body > section > header > h1

*** Keywords ***
Go to LogIn
    wait until page contains element  ${SIGNIN_LINK}
    click element  ${SIGNIN_LINK}
    Sleep  3s

Verify Page loaded
    wait until page contains element  ${SIGNIN_H1}

Validate Page Contents
    element text should be  ${SIGNIN_H1}  Log In