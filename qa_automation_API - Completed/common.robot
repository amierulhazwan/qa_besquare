*** Keyword ***
Login
    [arguments]                                     ${email}            ${pw}
    open browser                                    url=http://app.deriv.com    browser=chrome
    maximize browser window
    wait until page does not contain element        ${preloader}        10
    wait until page contains element                ${login_btn}        60
    click element                                   ${login_btn}
    wait until page contains element                ${email_field}      15
    input text                                      ${email_field}      ${email}
    input password                                  ${pw_field}         ${pw}
    click element                                   ${login_oauth_btn}
Settings
    wait until page does not contain element        ${preloader}        10
    click element                                   ${setting}
    wait until page contains element                ${acc_setting}
    click element                                   ${api_token}

No scopes selected and a token name is inserted.
    wait until page does not contain element        ${initial_loader}   60
    input text                                      ${token_field}      token_name
    page should contain element                     ${create_dis}
    sleep                                           5
No scopes selected and no token name is inserted.
    wait until page does not contain element        ${initial_loader}   60
    page should contain element                     ${create_dis}
    sleep                                           5
1 scope is selected and a token name is inserted.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    input text                                      ${token_field}      token_name
    page should not contain element                 ${create_dis}
    capture page screenshot
    sleep                                           5
1 scope is selected and no token name is inserted.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    page should contain element                     ${create_dis}
    capture page screenshot
    sleep                                           5
All scopes are selected and a token name is inserted.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    click element                                   ${trade_parent}
    checkbox should be selected                     ${trade}
    click element                                   ${payments_parent}
    checkbox should be selected                     ${payments}
    click element                                   ${admin_parent}
    checkbox should be selected                     ${admin}
    click element                                   ${ti_parent}
    checkbox should be selected                     ${ti}
    input text                                      ${token_field}      token_name
    page should not contain element                 ${create_dis}
    capture page screenshot
    sleep                                           5
All scopes are selected and no token name is inserted.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    click element                                   ${trade_parent}
    checkbox should be selected                     ${trade}
    click element                                   ${payments_parent}
    checkbox should be selected                     ${payments}
    click element                                   ${admin_parent}
    checkbox should be selected                     ${admin}
    click element                                   ${ti_parent}
    checkbox should be selected                     ${ti}
    page should contain element                     ${create_dis}
    capture page screenshot
    sleep                                           5
“Token name” field is blank.
    wait until page does not contain element        ${initial_loader}   60
    input text                                      ${token_field}      field_test
    press keys                                      ${token_field}      CTRL+A    DELETE
    wait until page contains element                ${err_popup}        60
    page should contain element                     ${err_popup}        message="Please enter a token name."
    sleep                                           5
1 character token name is inserted.
    wait until page does not contain element        ${initial_loader}   60
    input text                                      ${token_field}      1
    wait until page contains element                ${err_popup}        60
    page should contain element                     ${err_popup}        message="Length of token name must be between 2 and 32 characters."
    sleep                                           5
33 character token name is inserted.
    wait until page does not contain element        ${initial_loader}   60
    input text                                      ${token_field}      12345678901234567890123345678901234
    wait until page contains element                ${err_popup}        60
    page should contain element                     ${err_popup}        message="Maximum 32 characters."
    sleep                                           5
Symbols and special characters are inserted.
    wait until page does not contain element        ${initial_loader}   60
    input text                                      ${token_field}      @^&*
    wait until page contains element                ${err_popup}        60
    page should contain element                     ${err_popup}        message=" Only letters, numbers, and underscores are allowed."
    sleep                                           5
Valid token name is inserted.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    input text                                      ${token_field}      valid_name
    page should not contain element                 ${create_dis}
    sleep                                           5
Valid token name is inserted and “Create” was clicked.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    input text                                      ${token_field}      item_1
    click element                                   ${create}
    wait until page contains element                ${created_item}     60
    sleep                                           10
    page should contain element                     //*[text()="item_1" and contains (@class,"dc-text")]
“Copy” was clicked
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    input text                                      ${token_field}      item_2
    click element                                   ${create}
    wait until page contains element                ${created_item}     60
    sleep                                           10
    element should be enabled                       ${copy_btn}
“Delete” button was clicked
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    input text                                      ${token_field}      item_3
    click element                                   ${create}
    wait until page contains element                ${created_item}     60
    sleep                                           10
    click element                                   ${delete_btn}
    page should contain element                     ${yes_btn}
    page should contain element                     ${no_btn}
    sleep                                           10
“Delete” button was clicked and “Yes” option was clicked.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    input text                                      ${token_field}      delete_item
    click element                                   ${create}
    wait until page contains element                ${created_item}     60
    sleep                                           10
    click element                                   ${delete_btn}
    page should contain element                     ${yes_btn}
    click element                                   ${yes_btn}
    page should contain element                     //*[text()="delete_item" and contains (@class,"dc-text")]
“Delete” button was clicked and “No” option was clicked.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    input text                                      ${token_field}      not_delete_item
    click element                                   ${create}
    wait until page contains element                ${created_item}     60
    sleep                                           10
    click element                                   ${delete_btn}
    page should contain element                     ${no_btn}
    click element                                   ${no_btn}
    page should contain element                     //*[text()="not_delete_item" and contains (@class,"dc-text")]
An Existing token name was inserted.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    input text                                      ${token_field}      dup_name
    click element                                   ${create}
    wait until page contains element                ${created_item}     60
    sleep                                           5
    input text                                      ${token_field}      dup_name
    page should contain element                     ${create_dis}
After creating the token 1 check box checked.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    input text                                      ${token_field}      1_checkb
    sleep                                           5
    click element                                   ${create}
    wait until page contains element                ${created_item}     60
    sleep                                           10
    page should contain element                     //*[text()="Read" and contains (@class,"dc-text")]//parent::span
After creating the token 3 check box checked.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    click element                                   ${trade_parent}
    checkbox should be selected                     ${trade}
    click element                                   ${ti_parent}
    checkbox should be selected                     ${ti}
    input text                                      ${token_field}      3_checkb
    sleep                                           5
    click element                                   ${create}
    wait until page contains element                ${created_item}     60
    sleep                                           10
    page should contain element                     //*[text()="Read, Trade, Trading information" and contains (@class,"dc-text")]//parent::span
After creating the token 5 check box checked.
    wait until page does not contain element        ${initial_loader}   60
    click element                                   ${read_parent}
    checkbox should be selected                     ${read}
    click element                                   ${trade_parent}
    checkbox should be selected                     ${trade}
    click element                                   ${payments_parent}
    checkbox should be selected                     ${payments}
    click element                                   ${admin_parent}
    checkbox should be selected                     ${admin}
    click element                                   ${ti_parent}
    checkbox should be selected                     ${ti}
    input text                                      ${token_field}      5_checkb
    sleep                                           5
    click element                                   ${create}
    wait until page contains element                ${created_item}     60
    sleep                                           10
    page should contain element                     //*[text()="All" and contains (@class,"dc-text")]//parent::span
Delete
    click element                                   ${delete_btn}
    page should contain element                     ${yes_btn}
    click element                                   ${yes_btn}


