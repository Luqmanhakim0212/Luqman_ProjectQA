*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Variables ***
${trade}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[1]/div
${synthetic_indices}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[1]/div[2]/div/div[2]
${volatility50}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[2]/div[1]/div[7]
${chart_loader}    //*[@class="chart-container__loader"]
${choose_contractType}    //*[@id="dt_contract_dropdown"]/div
${choose_multiplier}    //*[@id="dt_contract_multiplier_item"]
${take_profit}    //*[@id="trade_container"]/div[4]/div/fieldset[3]/div/label/span[1]
${stoploss}    //*[@id="trade_container"]/div[4]/div/fieldset[4]/div/label/span[1]
${multiplier_value}    //*[@id="trade_container"]/div[4]/div/fieldset[2]/div[3]


*** Keywords ***
Multiplier
    click element    ${trade}
    click element    ${synthetic_indices}
    click element    ${volatility50}
    wait until page does not contain element    ${chart_loader}    60
    click element    ${choose_contractType}
    click element    ${choose_multiplier}
    wait until page does not contain    //*[text()="Payout"]
    click element    ${take_profit}
    click element    ${stoploss}
    click element    ${multiplier_value}
    page should contain element    //*[@name="multiplier" and contains(@class,"dc-text")]
    page should contain element    20
    page should contain element    40
    page should contain element    60
    page should contain element    100
    page should contain element    200
