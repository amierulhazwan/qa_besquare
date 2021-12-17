*** Settings ***
Library     SeleniumLibrary
Resource    common.robot
Resource    task 1.robot
Resource    task 2.robot
Resource    task 3.robot
Resource    task 4.robot
Resource    task 5.robot

*** Variable ***
# Login
${login_btn}        dt_login_button
${email_field}      name=email
${pw_field}         //*[@type="password"]
${login_oauth_btn}  //*[text()="Log in"]

# Underlying
${chart_loader}     //*[@class="chart-container__loader"]
${trade_op}         //*[@id="trade"]
${volatility_op}    //*[@class="cq-symbol-select-btn"]

## Task 1
#${acc_menu}         //*[@id="dt_core_account-info_acc-info"]
#${demo_tab}         //*[@id="dt_core_account-switcher_demo-tab"]
#${demo_acc}         //*[@id="dt_VRTC4795337"]

## Task 2/5
#${market_synInd}    //*[@class="ic-icon ic-synthetic_index"]

## Task 2
#${vol10_1sInd}      //*[@class="sc-mcd__item sc-mcd__item--1HZ10V "]
#${riseNfall}        //*[@id="dt_contract_rise_fall_item"]
#${tick}             //*[@id="dc_t_toggle_item"]
#${button--1}        //*[@class="btn-purchase btn-purchase--1"]

## Task 3
#${market_forex}     //*[@class="ic-icon ic-forex"]
#${aud_usd}          //*[@class="sc-mcd__item sc-mcd__item--frxAUDUSD "]
#${hignNlow}         //*[@id="dt_contract_high_low_item"]
#${durationField}    //*[@class="dc-input__field"]
#${payout}           //*[@id="dc_payout_toggle_item"]
#${payoutField}      //*[@id="dt_amount_input"]
#${button--2}        //*[@class="btn-purchase btn-purchase--2"]

## Task2/3/5
#${contract}         //*[@id="dt_contract_dropdown"]

## Task 4/5
#${errorPopUp}       //*[@class="dc-popover__bubble dc-popover__bubble--error"]

## Task 4
#${barrierField}     //*[@id="dt_barrier_1_input"]
#${disButton}        //*[@class="btn-purchase btn-purchase--disabled btn-purchase--2"]

## Task 5
#${vol50_Ind}        //*[@class="sc-mcd__item sc-mcd__item--R_50 "]
#${multiplier}       //*[@id="dt_contract_multiplier_item"]
#
## Parameter a
#${stake_locator}    //*[@class="trade-container__fieldset-info trade-container__fieldset-info--left"]
#
## Parameter b
#${take_profit_cls}  //*[@class="dc-checkbox take_profit-checkbox__input"]
#${stop_loss_cls}    //*[@class="dc-checkbox stop_loss-checkbox__input"]
#${dc_cls}           //*[@class="dc-checkbox"]
#${take_profit_id}   //*[@id="dc_take_profit-checkbox_input"]
#${stop_loss_id}     //*[@id="dc_stop_loss-checkbox_input"]
#${dc_id}            //*[@id="dt_cancellation-checkbox_input"]
#
## Parameter c
#${dc_list_dd}       //*[@id="dropdown-display"]
#${dc_list_left}     //*[@class="dc-list dc-list--left"]
#${dc_list}          //*[@class="dc-list__item"]
#${dc_list_item1}    //*[@id="20"]
#${dc_list_item2}    //*[@id="40"]
#${dc_list_item3}    //*[@id="50"]
#${dc_list_item4}    //*[@id="100"]
#${dc_list_item5}    //*[@id="200"]
#
## Parameter d
#
## Parameter e
#${stake_field}      //*[@id="dt_amount_input"]
#
## Parameter f
#${errorPopUp_stk}   //*[@class='trade-container__tooltip dc-tooltip dc-tooltip--error']


*** Test Cases ***
Open Deriv
    Login           ${my_email}     ${my_pw}
Task 1
    Task 1
Taks 2
    Underlying
    Task 2
Task 3
    Underlying
    Task 3
Task 4
    Task 4
Task 5
    Underlying
    Task 5
Parameter (a)
    Parameter (a)
Parameter (b.1)
    Parameter (b.1)
Parameter (b.2)
    Parameter (b.2)
Parameter (c)
    Parameter (c)
#Parameter (d)
Parameter (e)
    Parameter (e)
Parameter (f)
    Parameter (f)
Parameter (g)
    Parameter (g)
Parameter (h)
    Parameter (h)
Parameter (i)
    Parameter (i)
Close browser
    Close browser