*** Variables ***
# Task 2
${vol10_1sInd}      //*[@class="sc-mcd__item sc-mcd__item--1HZ10V "]
${market_synInd}    //*[@class="ic-icon ic-synthetic_index"]
${contract}         //*[@id="dt_contract_dropdown"]
${riseNfall}        //*[@id="dt_contract_rise_fall_item"]
${tick}             //*[@id="dc_t_toggle_item"]
${button--1}        //*[@class="btn-purchase btn-purchase--1"]

*** Keywords ***
Task 2
#   Select markets
    wait until page contains element                ${market_synInd}    60
    click element                                   ${market_synInd}
#   Select index
    wait until page contains element                ${vol10_1sInd}      60
    click element                                   ${vol10_1sInd}
#   Contract type
    wait until page contains element                ${contract}
    click element                                   ${contract}
    wait until page contains element                ${riseNfall}
    click element                                   ${riseNfall}
#   Tick settings
    click element                                   ${tick}
#   Buy contract
    wait until page contains element                ${button--1}
    click element                                   ${button--1}
    Sleep                                                               10
