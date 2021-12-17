*** Variables ***
# Task 5
${vol50_Ind}        //*[@class="sc-mcd__item sc-mcd__item--R_50 "]
${market_synInd}    //*[@class="ic-icon ic-synthetic_index"]
${contract}         //*[@id="dt_contract_dropdown"]
${multiplier}       //*[@id="dt_contract_multiplier_item"]

${stake_locator}    //*[@class="trade-container__fieldset-info trade-container__fieldset-info--left"]

${take_profit_cls}  //*[@class="dc-checkbox take_profit-checkbox__input"]
${stop_loss_cls}    //*[@class="dc-checkbox stop_loss-checkbox__input"]
${dc_cls}           //*[@class="dc-checkbox"]
${take_profit_id}   //*[@id="dc_take_profit-checkbox_input"]
${stop_loss_id}     //*[@id="dc_stop_loss-checkbox_input"]
${dc_id}            //*[@id="dt_cancellation-checkbox_input"]

${stake_field}      //*[@id="dt_amount_input"]

${errorPopUp}       //*[@class="dc-popover__bubble dc-popover__bubble--error"]
${errorPopUp_stk}   //*[@class='trade-container__tooltip dc-tooltip dc-tooltip--error']

${add_btn}          //*[@id="dc_take_profit_input_add"]
${sub_btn}          //*[@id="dc_take_profit_input_sub"]

*** Keywords ***
Task 5
#   Select markets
    wait until page contains element                ${market_synInd}    60
    click element                                   ${market_synInd}
#   Select index
    wait until page contains element                ${vol50_Ind}        60
    click element                                   ${vol50_Ind}
#   Contract type
    wait until page contains element                ${contract}
    click element                                   ${contract}
    wait until page contains element                ${multiplier}
    click element                                   ${multiplier}
Parameter (a)
    Element should contain                          ${stake_locator}    Stake
    Element should not contain                      ${stake_locator}    Payout
Parameter (b.1)
#   Click checkbox
    click element                                   ${take_profit_cls}
    click element                                   ${stop_loss_cls}
    sleep                                           5
    checkbox should be selected                     ${take_profit_id}
    checkbox should be selected                     ${stop_loss_id}
    checkbox should not be selected                 ${dc_id}
    capture page screenshot
    sleep                                           5
Parameter (b.2)
#   Click checkbox
    click element                                   ${dc_cls}
    sleep                                           5
    page should not contain                         //*[@id="dc_take_profit-checkbox_input" and @checked]//parent::label
    page should not contain                         //*[@id="dc_stop_loss-checkbox_input" and @checked]//parent::label
    checkbox should be selected                     ${dc_id}
    capture page screenshot
    sleep                                           5
Parameter (c)
    click element                                   //*[@id="dropdown-display"]
    page should contain element                     //*[@class="dc-list dc-list--left"]
    wait until page contains element                //*[@class="dc-list__item"]
    page should contain element                     //*[@id="20"]
    page should contain element                     //*[@id="40"]
    page should contain element                     //*[@id="60"]
    page should contain element                     //*[@id="100"]
    page should contain element                     //*[@id="200"]

#sorry dont know how to do it
#Parameter (d)

Parameter (e)
    press keys                                      ${stake_field}          CTRL+A    DELETE
    Input Text                                      ${stake_field}          2001
    wait until page contains element                ${errorPopUp}
    Page Should Contain Element                     ${errorPopUp}           message='Maximum stake allowed is 2000.00.'
Parameter (f)
    press keys                                      ${stake_field}          CTRL+A    DELETE
    Input Text                                      ${stake_field}          0
    wait until page contains element                ${errorPopUp_stk}
    Page Should Contain Element                     ${errorPopUp_stk}       message='Please enter a stake amount that's at least 1.00.'
Parameter (g)
    Click Element                                   //*[text()="Take profit"]
    Wait Until Page Contains Element                //*[@class="dc-checkbox__box dc-checkbox__box--active"]
    Click Element                                   ${add_btn}
    Wait Until Page Contains Element                //*[@value="1"]
    sleep                                           5
    Click Element                                   ${add_btn}
    Wait Until Page Contains Element                //*[@value="2"]
    sleep                                           5
    Click Element                                   ${add_btn}
    Wait Until Page Contains Element                //*[@value="3"]
    sleep                                           5
Parameter (h)
    Click Element                                   ${sub_btn}
    Wait Until Page Contains Element                //*[@value="2"]
    sleep                                           5
    Click Element                                   ${sub_btn}
    Wait Until Page Contains Element                //*[@value="1"]
    sleep                                           5
Parameter (i)
#   Click checkbox
    click element                                   ${dc_cls}
    sleep                                           5
#   Deal cancellation options
    click element                                   //*[@name='cancellation_duration']//parent::div
    page should contain element                     //*[@class="dc-list dc-list--left"]
    page should contain element                     //*[@id="5m"]
    page should contain element                     //*[@id="10m"]
    page should contain element                     //*[@id="15m"]
    page should contain element                     //*[@id="30m"]
    page should contain element                     //*[@id="60m"]
