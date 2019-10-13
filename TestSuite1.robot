*** Settings ***
Suite Teardown    Close All Browsers
Library           SeleniumLibrary
Resource          CommonlyUsedKewords.txt

*** Variables ***
${url}            https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin
&{LOGIN}          Username = Admin    Password = admin

*** Test Cases ***
Test1
    Open Browser    https://www.google.com/    chrome
    Close Browser
    Log To Console    I am Lamia

Test2
    Open Browser    ${url}    chrome
    Input Text    id = txtUsername    @{CREDENTIALS}[0]
    Input Password    id = txtPassword    &(LOGIN)[Password]
    Click Button    id = btnLogin
    Close Browser
    Log To Console    %{username} Log on to %{os}

Test3
    [Tags]    Test3
    [Setup]    Log To Console    Lamia
    Login
    [Teardown]    Log To Console    Sristy

Test4
    [Tags]    Smoke
    Log To Console    Test 4 started
    Open Browser    https://www.google.com/    chrome
    Close All Browsers
    Log To Console    Test 4 completed

Test5
    [Tags]    Sanity
    Log To Console    Test Started
    Log To Console    Test Completed

FlightApplication
    Open Browser    https://ngendigital.com/demo-application    chrome
    sleep    1
    Select Frame    id=iframe-015
    Input Text    name=email    Demo@gmail.com
    Input Password    name=passwd    Demopassword
    Click Element    name=SignIn
    Sleep    2
    [Teardown]    close browser

FlightLoginWithResourceFile
    Open Browser    https://ngendigital.com/demo-application    chrome
    sleep    1
    Select Frame    id=iframe-015
    Log In To Flight Application    Demo@gmail.com    Demopassword
    Sleep    2
    [Teardown]    close browser

*** Keywords ***
Login
    Input Text    id=txtUsername    Admin
    Input Password    id = txtPassword    admin
    Click Button    id=btnLogin

OpenBrowserPage
    Open Browser    ${url}    chrome
