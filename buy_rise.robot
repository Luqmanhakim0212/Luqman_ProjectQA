*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary


*** Keywords ***
Buy Rise
    wait until page contains element    //*[@class="cq-symbol-select-btn"]    60
    click element    //*[@class="cq-symbol-select-btn"]
    click element    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[1]/div[2]/div/div[2]
    click element    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[2]/div[1]/div[2]
    wait until page does not contain element    //*[@class="chart-container__loader"]   60
    click element    //*[@id="dt_contract_dropdown"]/div
    click element    //*[@id="dt_contract_rise_fall_item"]
    click element    //*[@id="dt_purchase_call_button"]/div[4]