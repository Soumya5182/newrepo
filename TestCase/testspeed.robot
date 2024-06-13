*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/
*** Test Cases ***
this is used for the set the selenium speed

    Open Browser    ${URL}  ${browser}

    Maximize Browser Window
            #1#Here set selenium speeds time. are set for all keyword

    #Set Selenium Speed    2 seconds

            #2#here  wait time until the page are not contain

    #Set Selenium Timeout    10 seconds
    #${get} =    Get Selenium Timeout
    #Log To Console    ${get}
    #Wait Until Page Contains    testing
    
            #3#Impllicity time out 
     Set Selenium Implicit Wait    10s
     ${implicit} =   Get Selenium Implicit Wait
     Log To Console    ${implicit}
    Input Text  //input[@name='fld_usernameee']    soumyaranjan

    Input Text  css:input.field[name='fld_email']     soumya@gmail.com

    Input Text  //input[@name='fld_password' and @placeholder="Password"]   678786786
                  #1#here we print the selenium
    #${speed}=   Get Selenium Speed
    #Log To Console    ${speed}

    Close Window
