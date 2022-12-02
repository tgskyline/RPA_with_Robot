*** Settings ***
Documentation       Template robot main suite.

Library             Collections
Library             MyLibrary
Library             RPA.Desktop
Resource            keywords.robot
Variables           variables.py

*** Variables ***
${Program_Steam}    C:/Program Files (x86)/Steam/Steam.exe 

*** Tasks ***
Example task
    Example Keyword
    Example Python Keyword
    Log    ${TODAY}

RPA02 - Abre um aplicativo e faz login
    Abre o aplicativo X
    Faz o login

*** Keywords ***

Abre o aplicativo X
    RPA.Desktop.Open Application     ${Program_Steam}
    Sleep    5s

Faz o login 
    Wait For Element    alias:Logo.Steam

