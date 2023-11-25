*** Settings ***

Library     SeleniumLibrary
Library     String
Documentation    This is the documentation of the test cases suite. 

*** Variables ***
${url}    https://www.tp.edu.sg/home.html

*** Test Cases ***
View a Centre of Excellence
    [Documentation]    View more information for the National Centre of Excellence for workplace learning
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Sleep    2
    Mouse Over    xpath=/html/body/div[2]/div[2]/div/div[1]/ul/li[4]/div[1]
    Click Element    xpath=/html/body/div[2]/div[2]/div/div[1]/ul/li[4]/div[2]/div/div[1]/a[1]
    Sleep    2
    Scroll Element Into View    xpath=/html/body/div[3]/div[1]/div/div[5]/div/div/div/div/div/div/div/div[4]/div/div/div/p[1]/b
    Click Element    xpath=/html/body/div[3]/div[1]/div/div[5]/div/div/div/div/div/div/div/div[1]/div/div/div/div/a
    Capture Page Screenshot

View Adult Learner Course
    [Documentation]     View Sustainable Cloud Solutions and Best Practices for Adult Learners
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Sleep   2
    Click Element  xpath=/html/body/div[2]/div[1]/div/nav/div[2]/div/ul/li[2]/a
    Scroll Element Into View    xpath=/html/body/div[3]/div[1]/div/div[9]/div/div[5]/div/div/div/div/div/div/div/div[4]/div/div[1]/img
    Click Element    xpath=/html/body/div[3]/div[1]/div/div[9]/div/div[5]/div/div/div/div/div/div/div/div[1]/div/div[2]/div/div/a
    Scroll Element Into View    xpath=/html/body/div[3]/div[1]/div/div[8]/div/div/h3
    Click Element    xpath=/html/body/div[3]/div[1]/div/div[6]/div/div[2]/div/div/div/div/div/div/div/div[2]/div/div[2]/div/div/a
    Capture Page Screenshot