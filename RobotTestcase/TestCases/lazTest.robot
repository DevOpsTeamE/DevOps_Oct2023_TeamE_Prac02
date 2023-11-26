*** Settings ***
Library    SeleniumLibrary
Resource    variable.robot
Library    String
Documentation    This is documentation of the test cases suite

*** Variables ***
${laz_URL}    https://www.lazada.sg/
${my_Query}    Winter Jacket

*** Test Cases ***
Search and view a winter jacket
    Open Browser     ${laz_URL}     chrome
#    Search for winter jacket
    Input Text    locator=q    text=${my_Query} 
#Click Search button
    Click Button    css = .search-box__button--1oH7
    Capture Page Screenshot
#click winter jacket
    Click Element    xpath= /html/body/div[3]/div/div[2]/div[1]/div/div[1]/div[2]/div[1]/div/div/div[1]/div[1]/a/div/img
    Sleep    2s
    Close Browser

