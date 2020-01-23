*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDINGPAGE_DEMOLINK} =  css=body > nav > h1 > a

*** Keywords ***
Navigate to
    go to  ${URL}

Verify Page loaded
    wait until page contains element  ${LANDINGPAGE_DEMOLINK}
