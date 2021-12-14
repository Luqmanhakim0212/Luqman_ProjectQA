*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary


*** Variables ***
${demo_switch_button}    //div[@id="dt_core_account-info_acc-info"]
${icon_setting}    //*[@class="dc-icon"]
${demo_tab}    //*[@id="dt_core_account-switcher_demo-tab"]
${switch_demo}    //*[@class="acc-switcher__id"]

*** Keywords ***
Switch account
    wait until page contains element    ${icon_setting}    60
    click element    ${demo_switch_button}
    click element    ${demo_tab}
    click element    ${switch_demo}
    reload page
    wait until page does not contain element    //*[@class="chart-container__loader"]   60