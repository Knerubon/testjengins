*** Settings ***
Library            Selenium2Library

*** Keywords ***
Open Web
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors    
    Create Webdriver    Chrome    chrome    chrome_options=${chrome_options}    
    Go To    https://www.google.com/

*** Test Cases ***
Test_Cases_001
    Open Web

Test_Cases_002
    Open Web
