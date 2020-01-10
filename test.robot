*** Settings ***

Documentation    Example RobotFramework test using the space separated plain text format.
Library          OperatingSystem
Library          SeleniumLibrary
Library          ./hello_world.py

*** Variables ***

${MESSAGE}       Hello, world!

*** Test Cases ***

My Test
    [Documentation]                  Hello World Test
    Log to console                   ${MESSAGE}

Browser Test Using Robot Framework
    Robot Browser                    https://www.phptravels.net/admin                chrome

Browser Test Using Python
    Python Selenium Test

*** Keywords ***

Robot Browser
    [Arguments]                      ${url}                                          ${browser}
    Open Browser                     url=${url}                                      browser=${browser}
    Press Keys                       css:.input-outlined > input[name='email']       admin@phptravels.com
    Press Keys                       css:.input-outlined > input[name='password']    demoadmin
    Click Element                    css:button[type=submit]
    Wait Until Element Is Visible    logout                                          # This is an id, so you can use just the id name as an argument here
    Close Browser
