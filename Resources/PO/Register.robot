*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${REGISTER_LINK} =  css=body > nav > ul > li:nth-child(1) > a
${REGISTER_H1} =  css=body > section > header > h1

*** Keywords ***
Select "Register" Page
    wait until page contains element  ${REGISTER_LINK}
    click element  ${REGISTER_LINK}
    Sleep  3s

Verify Page loaded
    wait until page contains element  ${REGISTER_H1}

Validate Page Contents
    element text should be  ${REGISTER_H1}  Register
