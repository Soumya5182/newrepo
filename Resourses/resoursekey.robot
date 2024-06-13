*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/userdefinekey.py
*** Variables ***
${browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/
*** Keywords ***
start browser and maximise
    [Documentation]     hii i am keyword level documentation
    [Arguments]     ${argu}
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window
    Sleep    2s
    #here pass the argument
    Input Text      //input[@name='fld_username']       ${argu}
    #here show the get the title of the page
    ${title}=   Get Title
    [Return]     ${title}
closes browser
    ${title}=   Get Title
    Log    ${title}
    Close Browser
check the suite setup
    Log    this is suitesetup
check the suite tear down
    Log    this is the suite tear down

#1#here learn the how to use the python functions in out test case
Create folder at runtime
    create_fold
    createsubfold
#2#Here learn the how to pass  the argument in userdefine keyword using python code
create user define keyword
    [Arguments]     ${parent}   ${child}
    createfoldargu  ${parent}
    createsubfoldargu   ${child}
#3#Here learn the pass the some argument and retuen some value using the python function.
create the concadination operator
    [Arguments]     ${a}    ${b}
    ${retunvaluestore}=     concadinaethe   ${a}    ${b}
    Log    ${retunvaluestore}
