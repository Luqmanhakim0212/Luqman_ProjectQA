*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary


*** Keywords ***
Barrier
    press keys    //*[@id="dt_barrier_1_input"]   CTRL+A    DELETE
    input text    //*[@id="dt_barrier_1_input"]    +1
    press keys    //*[@id="dt_amount_input"]    CTRL+A    DELETE
    input text    //*[@id="dt_amount_input"]    10
    element should be disabled    //*[@id="dt_purchase_put_button"]


