*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/
*** Test Cases ***
 This test case is used for the creating the robot framework browser
    Open Browser    ${URL}  ${browser}
    Sleep    2s
    #how to scroll down and up using the javascript library
    Execute Javascript  window.scrollTo(0,1000)
    Sleep    5s
    #go to use for the we can open the multiple browser one time.
    Go To    https://www.google.com/
    ${url}=     Get Location
    Log To Console    ${url}
    #this url used for the goback to the main url
    Go Back
    ${url1}=     Get Location
    Log To Console    ${url1}
    Sleep    4s