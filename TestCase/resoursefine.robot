*** Settings ***
Library    SeleniumLibrary
Library    Telnet
#how to give the absolute path
#Resource    C:/Users/Hello Soumya/PycharmProjects/robotframeworkproject/Resourses/resoursekey.robot
#this is the relatives paths
Resource    ../Resourses/resoursekey.robot
#how to use the
Documentation   hello i am test suite documentation
Test Timeout    2mins 2s
Suite Setup     check the suite setup
Suite Teardown  check the suite tear down
*** Variables ***

*** Test Cases ***
this test case used for the resourse
    [Documentation]     this test used for the check the documentaation for the test case
    [Setup]     start browser and maximise  soumyranjanroutray
    [Teardown]      closes browser
    #timeout used
    #[Timeout]       2mins 8s
    #retuen the value store in "${result}" this variable
    Input Text  css:input.field[name='fld_email']     ranjan@gmail.com