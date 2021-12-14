*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Variables ***
${manage_acc}    //*[@class="account-settings-toggle"]
${clickAPI_token}    //*[@id="/account/api-token"]
${checkbox_read}    //*[text()="Read"]
${checkbox_payments}    //*[text()="Payments"]
${checkbox_tradingInfo}    //*[text()="Trading information"]
${checkbox_trade}    //*[text()="Trade"]
${checkbox_admin}    //*[text()="Admin"]
${create_tokenName}    //*[@class="dc-input__field"]
${create_button}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[2]/div[2]/div/div/div/button
${copy_icon}    //*[@class="dc-icon dc-clipboard da-api-token__clipboard"]
${delete_button}   //*[@class="dc-btn dc-btn--secondary dc-btn__small"]
${yes_delete}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[5]/div/button[2]

*** Keywords ***
API Token
    wait until page contains element    ${manage_acc}    60
    click element    ${manage_acc}
    wait until page contains element    ${clickAPI_token}    60
    click element    ${clickAPI_token}
    wait until page contains element    ${checkbox_read}    60
    click element    ${checkbox_read}
    click element    ${checkbox_payments}
    click element    ${checkbox_tradingInfo}
    click element    ${checkbox_trade}
    click element    ${checkbox_admin}
    input text    //*[@class="dc-input__field"]    Mantyga
    wait until page contains element    ${create_button}
    click element    ${create_button}
    click element    ${copy_icon}
    wait until page contains element    //*[text()="Token copied!"]    60
    wait until page does not contain element    //*[text()="Token copied!"]    60
    wait until page contains element    ${delete_button}
    click element    ${delete_button}
#    wait until page contains element    ${yes_delete}
    click element    ${yes_delete}

