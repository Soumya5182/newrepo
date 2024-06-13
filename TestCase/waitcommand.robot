*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  Chrome
${URL}  https://www.thetestingworld.com/
*** Test Cases ***
 This test case is used for the creating the robot framework browser
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window
    #here we can set the time we can change
       #Set Selenium Timeout    10s
    #by default it will wait untill 5s
    Wait Until Page Contains    VIDEOS
    #wait untill the element are not contain that time we use this.It will wait 10s
    Wait Until Page Contains Element    //span[text()='VIDEOS ']
    Click Element    //span[text()='VIDEOS ']