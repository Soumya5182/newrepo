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
    Press Key  css:input.field[name='fld_email']     soumya@gmail.commmmmmmmmmmmmmmmm
    Sleep    2s
    Press Key    //input[@value="Sign up"]    \\13
    Sleep    10s