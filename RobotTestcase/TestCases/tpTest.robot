*** Variables ***

${tp_URL}    https://www.tp.edu.sg/home.html


*** Settings ***
Library    SeleniumLibrary
Library    String


*** Test Cases ***
View CCAs
    Open Browser     ${tp_URL}     chrome
    Maximize Browser Window
    #Life@tp
    Click Element    xpath = /html/body/div[2]/div[2]/div/div[1]/ul/li[3]/div[1]
    #cca
    Click Element    xpath = /html/body/div[2]/div[2]/div/div[1]/ul/li[3]/div[2]/div/div[1]/a[5]   
    Capture Page Screenshot
    Sleep    2s

    Close Browser
