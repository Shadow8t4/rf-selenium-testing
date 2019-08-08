*** Settings ***
Documentation    Example using the space separated plain text format.
Library          OperatingSystem
Library          Selenium2Library
Library          ./hello_world.py

*** Variables ***
${MESSAGE}       Hello, world!

*** Test Cases ***
My Test
    [Documentation]     Example test
    Log to console      ${MESSAGE}
    My Keyword          ./tmp

Another Test
    Should Be Equal     ${MESSAGE}  Hello, world!

Browser Test
    Open Browser        https://google.com  browser=chrome
    Close Browser

Second Browser Test
    Main

Third Browser Test
    Robot Browser

*** Keywords ***
My Keyword
    [Arguments]             ${path}
    Directory Should Exist  ${path}

Robot Browser
    Open Browser            http://testing-ground.scraping.pro/login    browser=chrome
    Press Keys              usr     admin
    Press Keys              pwd     12345
    Click Element           //input[@value='Login']
    Sleep                   5
    Close Browser
