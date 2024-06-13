*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  Chrome
${URL}  https://www.thetestingworld.com/
${url1}  https://www.google.com
*** Test Cases ***
 This test case is used for the creating the robot framework browser
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window
    Open Browser    ${url1}  ${browser}
    Sleep    4s
    #here index are start from the 1 
    Switch Browser    1
    #print the data
    ${bro1}=    Get Location

    Log To Console    ${bro1}

    Click Element    //span[text()='VIDEOS ']
    #
     Switch Browser    2
     ${bro2}=    Get Location
    Log To Console    ${bro2}