*** Settings ***
Documentation  These are API test for the app
Resource  ../Resources/API/Api.robot


*** Variables ***

*** Test Cases ***
Get token
    [Tags]  API-test
    Check Response Json
