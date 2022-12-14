*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${base_url}    https://katalon-demo-cura.herokuapp.com/

*** Keywords ***
Login 
    Open Browser     ${base_url}    chrome
    Click Element    id=btn-make-appointment   
    Input Text    id=txt-username    John Doe
    Input Password    id=txt-password    ThisIsNotAPassword
    Click Button    id=btn-login