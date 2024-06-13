*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/
*** Test Cases ***
 This test case is used for the creating the robot framework browser
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window
    #1#here learn the page should be contain or not
    #Page Should not Contain Textfield    //input[@name="fld_usernameeeeeeee"]
    #Input Text    //input[@name="fld_username"]    soumya
    #Sleep    2s

    #2#how to select the  check box
    #Select Checkbox    name:terms
    #Sleep    4s
    #Checkbox Should Be Selected    name:terms
    #Click Button    //input[@value="Sign up"]

    #3#here we use the text should be content
    #Element Text Should :-used for the partial test
     #Element Text Should Be    //div[@id="tab-content1"]/p    Register now and kick start your career as a Software Testing Pro!
     #Input Text    //input[@name="fld_username"]    soumya
     #Sleep    2s
     
     #4#here i learn the title should be 
     #Title Should Be    aaa Login & Sign Up Forms
     #Input Text    //input[@name="fld_username"]    soumya

     #5#Element should be enble and disable
     #Element Should Be Disabled    //input[@name="fld_username"]
     #Input Text    //input[@name="fld_username"]    soumya

     #6#Element should be VISIBLE AND SHOULD NOT  BE VISIBLE
     Element Should Be Visible    //input[@name="fld_username"]
     Input Text    //input[@name="fld_username"]    soumya

    