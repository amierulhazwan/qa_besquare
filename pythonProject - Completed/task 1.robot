*** Variables ***
# Task 1
${acc_menu}         //*[@id="dt_core_account-info_acc-info"]
${demo_tab}         //*[@id="dt_core_account-switcher_demo-tab"]
${demo_acc}         //*[@id="dt_VRTC4795337"]

*** Keywords ***
Task 1
#   Account Menu
    wait until page does not contain element        dt_core_header_acc-info-preloader      30
    wait until page contains element                ${acc_menu}         60
    click element                                   ${acc_menu}
    click element                                   ${demo_tab}
    click element                                   ${demo_acc}