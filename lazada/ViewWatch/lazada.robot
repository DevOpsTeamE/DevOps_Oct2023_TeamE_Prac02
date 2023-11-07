*** Settings ***

Library     SeleniumLibrary
Resource    variables.robot
Library     String
Documentation    This is the documentation of the test cases suite. 

*** Test Cases ***
View Tissot Cheapest Watch
    [Documentation]    View the cheapest tissot watch.
    #Open Browser
    Open Browser    ${lazada_URL}   firefox
    #Search for classic watch
    Input Text    locator=q    text=${my_Query}
    #Click Search button
    Click Button    css = .search-box__button--1oH7
    #click cdformal watch
    Click Element    xpath = /html/body/div[3]/div/div[2]/div[1]/div/div[2]/div/div[1]/div[2]/div/div/div/a[3]
    #Check tissot box
    Click Element    xpath = /html/body/div[3]/div/div[2]/div[1]/div/div[2]/div/div[2]/div[2]/div/div[1]/a[3]/label/span[1]/input
    #filer dropdown
    Click Element    xpath = /html/body/div[3]/div/div[2]/div[1]/div/div[1]/div[1]/div/div[2]/div/div[2]/div/div/span[2]
    #$ low to high
    Click Element    xpath = /html/body/div[6]/div/div/div/div[2]/div/div/div/div[2]/div/div
    #cheapest watch
    Click Image    xpath = /html/body/div[3]/div/div[2]/div[1]/div/div[1]/div[3]/div[1]/div/div/div[1]/div/a/div/img
    #Close Browser

Check Scam FAQ
    [Documentation]   Visit lazada help center and view the first article about scam
    Open Browser     ${lazada_URL}     firefox
    #click customer care
    Click Element    xpath = /html/body/div[2]/div/div[1]/div/div/div[1]/div/div[4]/span
    #click lazada care
    Click Element    css = li.care-item:nth-child(1) > a:nth-child(1) > span:nth-child(1)
    #click search box
    Click Element    xpath = //*[@id="hq"]
    #Type Scam
    Input Text     xpath = //*[@id="hq"]   text= Scam
    #Click search
    Click Button    css = ._3X5JK
    #Click first article
    Click Element    xpath = /html/body/div[3]/div/div[3]/div/div[1]/div[1]/div[1]/a
    #Close browser
    Close Browser 
