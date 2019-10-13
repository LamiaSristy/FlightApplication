*** Settings ***
Suite Teardown    close browser
Library           SeleniumLibrary
Resource          CommonKeywords.txt

*** Test Cases ***
TC01-Book a flight - Round trip to and from destination_verify from cities
    Loginandnavigatetourl
    Change to ifreame    id= iframe-015
    ValidLogin
    Change to ifreame    id= iframe-115
    Login_Varification
    ValidationOnManageBooking
    ValidateFromCity
    LogOut

TC02-Book a flight round trip between To and From destination_Verify to cities
    Loginandnavigatetourl
    Change to ifreame    id= iframe-015
    ValidLogin
    Change to ifreame    id= iframe-115
    Login_Varification
    ValidationOnManageBooking
    Validate_ToCities

TC03-Book a flight round trip between to and from Destination_Verify Class
    Loginandnavigatetourl
    Change to ifreame    id= iframe-015
    ValidLogin
    Change to ifreame    id= iframe-115
    Login_Varification
    ValidationOnManageBooking
    Validate_class

TC04-Book a flight round trip between to and from Destination_RadioButton
    Loginandnavigatetourl
    Change to ifreame    id= iframe-015
    ValidLogin
    Change to ifreame    id= iframe-115
    Login_Varification
    ValidationOnManageBooking
    Validate_RadioButton

TC05- Book a flight one way trip between Toronto and Paris
    Loginandnavigatetourl
    Change to ifreame    id= iframe-015
    ValidLogin
    Change to ifreame    id= iframe-115
    Login_Varification
    ValidationOnManageBooking
    BookFirstClassFlight

TC06-Book a flight one way trip between New York to Mumbai
    Loginandnavigatetourl
    Change to ifreame    id= iframe-015
    ValidLogin
    Change to ifreame    id= iframe-115
    Login_Varification
    ValidationOnManageBooking
    BookEconomyFlight

TC07-BusenessClass
    Loginandnavigatetourl
    Change to ifreame    id= iframe-015
    ValidLogin
    Change to ifreame    id= iframe-115
    Login_Varification
    ValidationOnManageBooking
    BookBusenessFlight
