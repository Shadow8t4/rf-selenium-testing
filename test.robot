*** Settings ***
Documentation    Example using the space separated plain text format.
Library          OperatingSystem
Library          Selenium2Library

*** Variables ***
${MESSAGE}       Hello, world!

*** Test Cases ***
My Test
    [Documentation]    Example test
    Log    ${MESSAGE}
    My Keyword    ./tmp

Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!

Browser Test
    Open Browser    https://google.com  browser=firefox
    Close Browser

*** Keywords ***
My Keyword
    [Arguments]    ${path}
    Directory Should Exist    ${path}