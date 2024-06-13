*** Settings ***
Library     SeleniumLibrary
Library    Collections
*** Variables ***
${browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/
*** Test Cases ***
this test case used for the crate user define keyword
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window
    hello i am keywords     SOUMYA  RANJAN@GMAIL    5736576
    Sleep    2s

    #here set the variable
    ${listof the value}=    Set Variable    soumyaranjan
    Log To Console    ${listof the value}
    #how to create  the list and print 
    @{list}     Create List     hello    22  a   b   c

    ${list_length}      Get Length    ${list}

    Log To Console    ${list_length}

    ${list data}        Get From List   ${list}     1

    Log To Console    ${list data} 
*** Keywords ***

hello i am keywords
    [Arguments]     ${name}     ${email}    ${password}

    Input Text  //input[@name='fld_username']  ${name}

    Input Text  css:input.field[name='fld_email']  ${email}

    Input Text  //input[@name='fld_password' and @placeholder="Password"]   ${password}