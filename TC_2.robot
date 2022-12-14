*** Settings ***
Library    SeleniumLibrary
Resource    PageObject.robot

*** Test Cases ***
Make Appoiment in Demo Katalon
    Login
    Click Element    id=chk_hospotal_readmission
    Click Element    id=radio_program_medicaid
    Input Text    id=txt_visit_date    15/12/2022
    Input Text    id=txt_comment    Saya sakit flu
    Click Button    id=btn-book-appointment
    Page Should Contain Element    xpath=//*[@id="summary"]/div/div/div[7]/p/a