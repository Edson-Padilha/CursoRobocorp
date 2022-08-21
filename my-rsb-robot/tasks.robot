*** Settings ***
Documentation       Insert the sales data for the week and export it as a PDF.

Library             RPA.Browser.Selenium    auto_close=${FALSE}
Library             Collections
Library             MyLibrary
Resource            keywords.robot
Variables           MyVariables.py


*** Tasks ***
Insert the sales data for the week and export it as a PDF
    Open the intranet website
    log in
    Fill and submit the form

Example task
    Example Keyword
    Example Python Keyword
    Log    ${TODAY}


*** Keywords ***
Open the intranet website
    Open Available Browser    https://robotsparebinindustries.com/

Log in
    Input Text    username    maria
    Input Password    password    thoushallnotpass
    Submit Form
    Wait Until Page Contains Element    id:sales-form

Fill and submit the form
    Click Button    Submit
