*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary

*** Variables ***
${USERNAME} =  username
${PASSWORD} =  password

*** Keywords ***
Api consumer can review users registered in system
    curl -u username:  ${USERNAME} http://localhost:8080/api/auth/token
    #create session
    create session  get_session  http://localhost:8080
    ${Response} = get request  get_session  /api/auth/token

    ${json} =  Set Variable  ${response.json()}
    Log   ${json}


