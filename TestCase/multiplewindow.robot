*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  Chrome
${URL}  https://robotframework.org/
*** Test Cases ***
 This test case is used for the creating the robot framework browser
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window
    #here we can wsich the element through title and window 
    Click Element    //a[text()='test automation']
    #here we learn how to handale the multiple tang using the unique value
    @{list}     Get Window Handles
     FOR   ${win}  IN     @{list}

       ${URL}=  Get Location
        Log To Console    ${URL}
     END