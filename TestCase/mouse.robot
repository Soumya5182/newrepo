*** Settings ***
Library    SeleniumLibrary
Resource   ../Resourses/resoursekey.robot
*** Variables ***
${browser}  Chrome
${URL}  https://wbregistration.gov.in/(S(sjj0xhvj1lmxl03ecnowb5ht))/Grievance.aspx?GrievanceStatus=GV1
*** Test Cases ***
 This test case is used for the creating the robot framework browser
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window
    Sleep    2s
    #WHEN WE WANT TO THE DOUBLE CLCIK
   #Open Context Menu    //span[text()='VIDEOS ']
   #WHEN YOU WANT TO THE DOUBLE CLICK ON THE ELEMENT
   #Double Click Element    xpath://a[]
   #mouse down
   #Mouse Down    //span[text()='VIDEOS ']
   #mouse up
   #Mouse Up    //span[text()='VIDEOS ']
   #mouse over
   #Mouse Over    //span[text()='VIDEOS ']


   #1#when you want to  run the python function in your test case
   #Create folder at runtime
   #2#When  pass the arguments using the python code
   #create user define keyword   sssssss      pppppppppppp
   #3#Here pass some argument and return the some value and print that.
   create the concadination operator    hello    soumya
   Close Browser