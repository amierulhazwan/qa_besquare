*** Keyword ***
Login
    [arguments]     ${email}    ${pw}
    open browser    url=http://app.deriv.com    browser=chrome
    maximize browser window
    wait until page does not contain element        dt_core_header_acc-info-preloader
    wait until page contains element                ${login_btn}        60
    click element                                   ${login_btn}
    wait until page contains element                ${email_field}      15
    input text                                      ${email_field}      ${email}
    input password                                  ${pw_field}         ${pw}
    click element                                   ${login_oauth_btn}
Underlying
#   Underlying volatility
    reload page
    wait until page does not contain element        ${chart_loader}     30
    wait until page contains element                ${trade_op}         60
    wait until page contains element                ${volatility_op}    60
    click element                                   ${volatility_op}
