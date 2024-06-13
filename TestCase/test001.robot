*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
 This test case is used for the creating the robot framework browser
    [Tags]  soumya
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window
    Sleep    2s
    Input Text  //input[@name='fld_username']    soumyaranjan
    Sleep    2s
    Clear Element Text  //input[@name='fld_username']

    Input Text  css:input.field[name='fld_email']     soumya@gmail.com
    Sleep    2s
    Input Text  //input[@name='fld_password' and @placeholder="Password"]   678786786
    Sleep    2s
    Input Text  //input[@type="password" and @placeholder="Confirm password"]  1234567
    Sleep    2s
    Click Element   css:input#datepicker[placeholder="Date of birth"]
    Sleep    2s
    #Click Element   //td[@data-month="2"]/a[text()='14']
    #Sleep    2s
    #select the radio button
    Select Radio Button    add_type    home
    Sleep    3
    #how to select the  check box
    Select Checkbox    name:terms
     Sleep    3
    #how to select the link
    #Click Link    xpath://a[text()='Read Detail']
 this testcase used for the
     [Tags]  sanity
     #select the list by index
     Select From List By Index    name:sex   1
     Sleep    2s
     #select the list by value
     Select From List By Value    name:sex   2
     Sleep    2s
     #select the list by Label
     Select From List By Label    name:sex   Male
     Sleep    2s
     #click button 
     Click Button    //input[@value="Sign up"]
    Close Browser
*** Keywords ***
