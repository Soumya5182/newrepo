*** Settings ***
Library     C:/Users/Hello Soumya/PycharmProjects/robotframeworkproject/ExternalKeywords/locator.py
Library    SeleniumLibrary
*** Variables ***
${browser}  Chrome
${URL}  https://www.thetestingworld.com/testings
*** Test Cases ***
robot first test case
    [Tags]  Smoke
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window
    ${username}=    real element locstor    registration.user_textbox_name
    Log To Console    ${username}
    Input Text    name:${username}   testing
    Input Text    name:fld_email    soumya@gmail.com
    Input Text    name:fld_password     23456789
*** Keywords ***
real element locstor
    [Arguments]     jsonpath
    ${result}=  read_locator_from_json      jsonpath
    [Return]    ${result}