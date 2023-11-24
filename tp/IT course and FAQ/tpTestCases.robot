*** Settings ***

Library     SeleniumLibrary
Resource    variables.robot
Library     String
Documentation    This is the documentation of the test cases suite. 

*** Test Cases ***
Find Information Technology Course
    [Documentation]    Find the Information Technology Course for Prospective Students
    Open Browser    ${TP_URL}   chrome
    Maximize Browser Window
    Click Element    xpath = /html/body/div[2]/div[2]/div/div[1]/ul/li[1]/div[1]
    Click Element    xpath = /html/body/div[2]/div[2]/div/div[1]/ul/li[1]/div[2]/div/div[1]/a[2]
    Input Text    xpath = //*[@id="search-content-course"]    text=Information Technology
    Click Element    xpath = /html/body/div[3]/div[2]/div/div[3]/div/div[2]/div[1]/div[1]/div/div
    Click Element    xpath = /html/body/div[6]/div/div/div
    Click Element    xpath = /html/body/div[3]/div[2]/div/div[3]/div/div[2]/div[3]/div[1]/div[1]/a/img
    Sleep    5
    Capture Page Screenshot

Find Common FAQ for CPF Education Loan Scheme
    [Documentation]   Find the available financial schemes TP offers
    Open Browser     ${TP_URL}     chrome
    Maximize Browser Window
    Click Element    xpath = /html/body/div[2]/div[2]/div/div[1]/ul/li[2]/div[1]
    Click Element    xpath = /html/body/div[2]/div[2]/div/div[1]/ul/li[2]/div[2]/div/div[3]/a[5]
    Click Element    xpath = /html/body/div[3]/div[1]/div/div[3]/div/div/div[1]/div/div/div/div/div[2]/ul/li[3]/a
    Click Element    xpath = /html/body/div[3]/div[1]/div/div[3]/div/div/div[2]/div/div[10]/div/div[3]/div/div/p[1]/a[4]
    Click Element    xpath = /html/body/div[3]/div[1]/div/div[3]/div/div/div[2]/div/div[10]/div/div[6]/div/div[5]/h3/button
    Sleep    5
    Capture Page Screenshot
