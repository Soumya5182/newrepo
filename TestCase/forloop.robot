*** Settings ***
Library     SeleniumLibrary
Library     Collections

*** Test Cases ***
#for loop using the range
FOR LOOP PRATICE SET
    FOR     ${i}    IN RANGE    1   6
        Log To Console    ${i}
    END


*** Test Cases ***
#print the vslue using for loop from list
for loop using the list
    [Tags]  soumya
    @{list}     create list     hello   soumyaranjan    routray
    FOR    ${I}    IN    @{LIST}
        Log To Console    ${I}

    END



