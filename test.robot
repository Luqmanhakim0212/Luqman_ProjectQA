*** Settings ***
Library     SeleniumLibrary
Resource    common.robot
Resource    virtual.robot
Resource    buy_rise.robot
Resource    buy_lower.robot
Resource    barrier.robot
Resource    multiplier_contract.robot
Resource    API_token.robot

*** Variable ***
${login_btn}    dt_login_button
${email_field}    name=email
${pw_field}    //*[@type="password"]
${login_auth_btn}   //*[text()="Log in"]

*** Keyword ***

*** Test Cases ***
Open Deriv
    Login    ${VALID_USER}    ${VALID_PWD}
    Switch account
    Buy Rise
    Buy lower
    Barrier
    Multiplier
    API Token
