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
    Input Text  css:input.field[name='fld_email']     soumya@gmail.com
    Sleep    1s
    #Get the title
    ${pagetitile}=  Get Title
    Log    ${pagetitile}
    #get the speed
    ${getthespeed}=  Get Selenium Speed
    Log    ${getthespeed}
    #get the value
    ${getvalue}=    Get Value    //input[@type='submit']
    Log    ${getvalue}
    #get the text 
    ${gettext}=     Get Text    //a[@class="displayPopup"]
    Log    ${gettext}
    #Select from list by index 
    Select From List By Index    //*[@name="sex"]   2
    ${Getl}=    Get Selected List Values    //*[@name="sex"]
    Log    ${Getl}
    #get the seleneium list of the lebel 
    ${getlistleb}=  Get Selected List Labels    //*[@name="sex"]
    Log    ${getlistleb}
    #get the all list of the items
    ${getalllist}=  Get List Items    //*[@name="sex"]
    Log    ${getalllist}
    #29/04/24
    #Get location of the actual url
    ${gettheactualurl}=     Get Location
    Log    ${gettheactualurl}
    #Here find the all html tag of the element 
    ${tagall}=      Get Source
    Log    ${tagall}
    #here get the element of the arribute
    ${getelemt}=    Get Element Attribute    //*[@name="sex"]    class
    Log    ${getelemt}
    #here count of the element 
    ${usecoit}=     Get Element Count    /*[@name="sex"]
    

    
