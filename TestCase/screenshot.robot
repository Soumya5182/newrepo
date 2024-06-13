*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/
*** Test Cases ***
 This test case is used for the creating the robot framework browser
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window
    Sleep    2s
    Input Text  //input[@name='fld_username']    soumyaranjan
    Sleep    2s
    Clear Element Text  //input[@name='fld_username']
    Sleep    2s
    Input Text  css:input.field[name='fld_email']     soumya@gmail.com
    Sleep    2s
    Input Text  //input[@name='fld_password' and @placeholder="Password"]   678786786
    Sleep    2s
    Input Text  //input[@type="password" and @placeholder="Confirm password"]  1234567
    Sleep    2s
    Click Element   css:input#datepicker[placeholder="Date of birth"]
    Sleep    2s
    Click Element   //td[@data-month="2"]/a[text()='14']
    #capture tne screenshots.
    Capture Page Screenshot  C:/Users/Hello Soumya/PycharmProjects/robotframeworkproject/TestCase/rooot.png
    #close the browser
    Open Browser    https://www.udemy.com/course/robot-python/learn/lecture/17556240#overview
    Sleep    2s
    Close All Browsers
    #Close Browser


