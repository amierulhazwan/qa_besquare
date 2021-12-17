*** Variables ***
# Task 3
${market_forex}     //*[@class="ic-icon ic-forex"]
${aud_usd}          //*[@class="sc-mcd__item sc-mcd__item--frxAUDUSD "]
${contract}         //*[@id="dt_contract_dropdown"]
${hignNlow}         //*[@id="dt_contract_high_low_item"]
${durationField}    //*[@class="dc-input__field"]
${payout}           //*[@id="dc_payout_toggle_item"]
${payoutField}      //*[@id="dt_amount_input"]
${button--2}        //*[@class="btn-purchase btn-purchase--2"]

*** Keywords ***
Task 3
#   Select markets
    wait until page contains element                ${market_forex}     60
    click element                                   ${market_forex}
#   Select currency
    wait until page contains element                ${aud_usd}          60
    click element                                   ${aud_usd}
#   Contract type
    wait until page contains element                ${contract}
    click element                                   ${contract}
    wait until page contains element                ${hignNlow}
    click element                                   ${hignNlow}
#   Duration settings
    press keys                                      ${durationField}    CTRL+A    DELETE
    input text                                      ${durationField}    5
#   Payout settings
    click element                                   ${payout}
    press keys                                      ${payoutField}      CTRL+A    DELETE
    input text                                      ${payoutField}      15.50
#   Buy contract
    wait until page contains element                ${button--2}        60
    click element                                   ${button--2}
    Sleep                                                               10
