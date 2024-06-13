*** Settings ***
Library     SeleniumLibrary
Library     Collections
*** Variables ***

*** Test Cases ***
store system define keyword in the user define variable
    ${user define}  Set Variable    log to console
    Run Keyword    ${user define}   soumyaranjan
    Sleep    10s
*** Test Cases ***
how to conditionally execute any keyword like if and else
    ${condition}=   Set Variable  NO
    Run Keyword If    '${condition}' == "YES"   Log To Console     VALUE FOUND
    Run Keyword If    '${condition}' == "NO"    Log To Console     VALUE NOT FOUND