*** Settings ***
Test Teardown     close browser
Library           Selenium Library
Resource          CommonKeywords.txt
Library           SeleniumLibrary

*** Test Cases ***
TC01-Login to Screen_Objects on page
    Loginandnavigatetourl
    Change to ifreame
    Objects to new web page

TC02-Login Screen - default text for username and password
    Loginandnavigatetourl
    Change to ifreame
    DefaultValueUsernamePassword

TC03- User doesnot enter email
    Set Selenium Speed    0.5
    Loginandnavigatetourl
    Change to ifreame
    EmptyUserName

TC04-User doesn't enter password
    SeleniumLibrary.Set Selenium Speed    0.5
    Loginandnavigatetourl
    Change to ifreame
    EmptyPassword

TC05-User doesn't enter email or password
    SeleniumLibrary.Set Selenium Speed    0.5
    Loginandnavigatetourl
    Change to ifreame
    EmptyUsernameAndPassword

TC06-User enters invalid email format
    SeleniumLibrary.Set Selenium Speed    0.5
    Loginandnavigatetourl
    Change to ifreame
    InvalidEmailFormat

TC07-User logs in with valid username and password
    SeleniumLibrary.Set Selenium Speed    0.5
    Loginandnavigatetourl
    Change to ifreame
    ValidLogin
    SeleniumLibrary.Select Frame    id= iframe-115
    Login_Varification
