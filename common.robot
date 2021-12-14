*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
Login
    [arguments]    ${email}    ${pwd}
    Open Browser    url=https://app.deriv.com    browser=chrome
    Set window size    1280    1024
    wait until page does not contain element    dt_core_header_acc-info-preloader   60
    Wait until page contains element    ${login_btn}    60
    Click element    ${login_btn}
    wait until page contains element    ${email_field}    15
    Input text    ${email_field}    ${email}
    Input text    ${pw_field}    ${pwd}
    Click element    ${login_auth_btn}
    wait until page does not contain element    dt_core_header_acc-info-preloader   60
    wait until page does not contain element    //*[@aria-label="Loading interface..."]     60
#    Close Browser
