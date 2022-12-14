*** Settings ***
Library    SeleniumLibrary
Resource    PageObject.robot

*** Test Cases ***
Login Demo Katalon with valid credentials
    Open Browser     ${base_url}    chrome
    Click Element    id=btn-make-appointment   
    Input Text    id=txt-username    John Doe
    Input Password    id=txt-password    ThisIsNotAPassword
    Click Button    id=btn-login
    Close Browser