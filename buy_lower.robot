*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Variables ***
${choose_currency}    //*[@class="cq-symbol-select-btn"]
${choose_forex}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[1]/div[2]/div/div[3]
${choose_AUDUSD}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[3]/div[1]/div[3]
${contract_type}    //*[@id="dt_contract_dropdown"]/div
${loading}      //*[@class="chart-container__loader"]
${choose_higher_lower}    //*[@id="dt_contract_high_low_item"]
${text_field}    //*[@id="dt_simple_duration_datepicker"]/div/div[1]/input
${choose_payout}    //*[@id="dc_payout_toggle_item"]
${payout_text}    //*[@id="dt_amount_input"]
${purchase_lower}    //*[@id="dt_purchase_put_button"]
${disabled_lower}    //*[@id="trade_container"]/div[4]/div/div/fieldset[2]/div


*** Keywords ***
Buy lower
    click element    ${choose_currency}
    click element    ${choose_forex}
    click element    ${choose_AUDUSD}
    wait until page does not contain element    ${loading}   60
    click element    ${contract_type}
    click element    ${choose_higher_lower}
    clear element text    ${text_field}
    input text    ${text_field}     2
    click element    ${choose_payout}
    press keys    ${payout_text}    CTRL+A  DELETE
    input text    ${payout_text}    15.50
    wait until element is enabled    ${purchase_lower}
    click element    ${purchase_lower}

