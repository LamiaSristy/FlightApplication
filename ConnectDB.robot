*** Settings ***
Library           DatabaseLibrary
Library           SeleniumLibrary
Library           Collections

*** Test Cases ***
TC01_DatabaseAutomation
    Connect To Database    pymssql    TestDB    TestSQL    sa123    localhost    1928
    @{queryResults}    Description    Select * From Student
    Log Many    @{queryResults}
    @{queryResults}    Query    Select * From Student
    Log Many    @{queryResults}
    ${count}    Row Count    Select * From Student
    Log Many    ${count}
    Row Count Is Equal To X    Select * From Student    4
    Table Must Exist    Student
    Check If Exists In Database    Select FirstName From Student where LastName = 'Jaman'

TC02
    Connect To Database    pymssql    TestDB    TestSQL    sa123    localhost    1928
    Table Must Exist    NgenDigital
    @{queryresults}    Query    select Username from NgenDigital where id=1
    @{var5}    Convert To List    @{queryresults}
    @{queryresults1}    Query    select Password from NgenDigital where id=1
    @{var6}    Convert To List    @{queryresults1}
    Open Browser    https://ngendigital.com/demo-application    Chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    Wait Until Keyword Succeeds    2    1    Input Text    xpath://input[@type='email']    @{var5}
    Wait Until Keyword Succeeds    2    1    Input Text    xpath://input[@type='password']    @{var6}
    Wait Until Keyword Succeeds    2    1    Click Element    xpath://div[contains(text(),'Sign In')]
    [Teardown]    Close Browser
