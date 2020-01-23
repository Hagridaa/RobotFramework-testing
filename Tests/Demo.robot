*** Settings ***
Documentation  This test suite test Demo projects registertation and sign in functions
Resource  ../Resources/DemoApp.robot
Resource  ../Resources/Common.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Demo.robot

*** Variables ***
${BROWSER} =  Chrome
${URL} =  http://localhost:8080/
${REGISTER_URL} =  http://localhost:8080/register
${USERNAME} =  username
${PASSWORD} =  password
${FIRST_NAME} =  firstname
${FAMILY_NAME} =  familyname
${PHONENUMBER} =  phonenumber
${REGISTER} =  css=body > section > form > input[type=submit]:nth-child(11)
${SIGNIN} =  css=body > section > form > input[type=submit]:nth-child(5)


*** Test Cases ***
Should be able to access "main" page
    [Documentation]  testing to go to main page
    [Tags]  Test1
    DemoApp.Go to LandingPage
    Sleep  2s

"Register" page should match requirements
    [Documentation]  testing that register page match rq
    [Tags]  Test2
    DemoApp.Go to LandingPage
    DemoApp.Go to Register Page
    DemoApp.Validate RegisterPage
    Sleep  2s

#if username allready taken..
Should be able to register
    [Documentation]  testing that user should be able to register as user
    [Tags]  Test3
    DemoApp.Go to LandingPage
    DemoApp.Go to Register Page
    Input Text  id=username  ${USERNAME}
    Input Text  id=password  ${PASSWORD}
    Input Text  id=firstname  ${FIRST_NAME}
    Input Text  id=lastname  ${FAMILY_NAME}
    Input Text  id=phone  ${PHONENUMBER}
    Sleep  2s
    Click Button  ${REGISTER}
    Sleep  2s

Should be able to go to signin page
    [Documentation]  testing that user should be able to go to sign in page
    [Tags]  Test4
    DemoApp.Go to LandingPage
    DemoApp.Go to LogIn
    DemoApp.Validate LogIn
    Sleep  2s


Should be able to signin
    [Documentation]  testing that user should be able to sign in and see own information
    [Tags]  Test5
    DemoApp.Go to LandingPage
    DemoApp.Go to LogIn
    Input Text  id=username  ${USERNAME}
    Input Text  id=password  ${PASSWORD}
    Sleep  3s
    Click Button  ${SIGNIN}
    Sleep  10s












