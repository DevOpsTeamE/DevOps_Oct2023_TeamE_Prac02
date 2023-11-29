*** Settings ***
Library    SeleniumLibrary
Library    String
Documentation


*** Variables ***
${url}    https://www.tp.edu.sg/home.html


*** Test Cases ***
View more about TP's Industry Partners
    [Documentation]
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Click Element    xpath=/html/body/div[2]/div[1]/div/nav/div[2]/div/ul/li[6]/a
    Sleep    2
    Scroll Element Into View    xpath=/html/body/div[3]/div[1]/div/div[6]/div/div/h3
    Click Element    xpath=/html/body/div[3]/div[1]/div/div[5]/div/div/div/div/div[2]/div/a
    Sleep    2
    Capture Page Screenshot

View Admission guide for O Level Students and Graduates
    [Documentation]
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Mouse Over    xpath=/html/body/div[2]/div[2]/div/div[1]/ul/li[2]/div[1]
    Click Element    xpath=/html/body/div[2]/div[2]/div/div[1]/ul/li[2]/div[2]/div/div[1]/a[1]
    Sleep    2
    Scroll Element Into View    xpath=/html/body/div[3]/div[1]/div/div[3]/div/div/div[2]/div/div[1]/div/div/p[14]/a/b
    Sleep    2
    Capture Page Screenshot