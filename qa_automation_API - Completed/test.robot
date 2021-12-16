*** Settings ***
Library     SeleniumLibrary
Resource    common.robot
*** Variable ***
# Login
${login_btn}        dt_login_button
${email_field}      name=email
${pw_field}         //*[@type="password"]
${login_oauth_btn}  //*[text()="Log in"]

# Settings
${setting}          //*[@class="account-settings-toggle"]
${acc_setting}      //*[@class="account"]
${api_token}        //*[@id="/account/api-token"]

# Test Variable
${read_parent}      //*[@name="read" and contains (@class, "dc-checkbox__input")]//parent::label
${read}             //*[@name="read" and contains (@class, "dc-checkbox__input")]
${trade_parent}     //*[@name="trade" and contains (@class, "dc-checkbox__input")]//parent::label
${trade}            //*[@name="trade" and contains (@class, "dc-checkbox__input")]
${payments_parent}  //*[@name="payments" and contains (@class, "dc-checkbox__input")]//parent::label
${payments}         //*[@name="payments" and contains (@class, "dc-checkbox__input")]
${admin_parent}     //*[@name="admin" and contains (@class, "dc-checkbox__input")]//parent::label
${admin}            //*[@name="admin" and contains (@class, "dc-checkbox__input")]
${ti_parent}        //*[@name="trading_information" and contains (@class, "dc-checkbox__input")]//parent::label
${ti}               //*[@name="trading_information" and contains (@class, "dc-checkbox__input")]

${preloader}        dt_core_header_acc-info-preloader
${initial_loader}   //*[@class="initial-loader account__initial-loader"]
${token_field}      //*[@name="token_name"]
${create_dis}       //*[@type="submit" and @disabled]
${create}           //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large da-api-token__button"]
${err_popup}        //*[@class="dc-field dc-field--error"]
${created_item}     //*[@class="da-api-token__table"]
${copy_btn}         //*[@class="dc-icon dc-clipboard da-api-token__clipboard"]
${delete_btn}       //*[@class='dc-btn dc-btn--secondary dc-btn__small']
${yes_btn}          //*[text()='Yes' and contains (@class,'dc-text dc-btn__text')] //parent::button
${no_btn}          //*[text()='No' and contains (@class,'dc-text dc-btn__text')] //parent::button

*** Test Cases ***
Open Deriv
    Login           ${my_email}     ${my_pw}
Settings
    Settings
No scopes selected and a token name is inserted.
    No scopes selected and a token name is inserted.
    reload page
No scopes selected and no token name is inserted.
    No scopes selected and no token name is inserted.
    reload page
1 scope is selected and a token name is inserted.
    1 scope is selected and a token name is inserted.
    reload page
1 scope is selected and no token name is inserted.
    1 scope is selected and no token name is inserted.
    reload page
All scopes are selected and a token name is inserted.
    All scopes are selected and a token name is inserted.
    reload page
All scopes are selected and no token name is inserted.
    All scopes are selected and no token name is inserted.
    reload page
“Token name” field is blank.
    “Token name” field is blank.
    reload page
1 character token name is inserted.
    1 character token name is inserted.
    reload page
33 character token name is inserted.
    33 character token name is inserted.
    reload page
Symbols and special characters are inserted.
    Symbols and special characters are inserted.
    reload page
Valid token name is inserted.
    Valid token name is inserted.
    reload page
Valid token name is inserted and “Create” was clicked.
    Valid token name is inserted and “Create” was clicked.
    Delete
    reload page
“Copy” was clicked
    “Copy” was clicked
    Delete
    reload page
“Delete” button was clicked
    “Delete” button was clicked
    Delete
    reload page
“Delete” button was clicked and “Yes” option was clicked.
    “Delete” button was clicked and “Yes” option was clicked.
    reload page
“Delete” button was clicked and “No” option was clicked.
    “Delete” button was clicked and “No” option was clicked.
    Delete
    reload page
An Existing token name was inserted.
    An Existing token name was inserted.
    Delete
    reload page
After creating the token 1 check box checked.
    After creating the token 1 check box checked.
    Delete
    reload page
After creating the token 3 check box checked.
    After creating the token 3 check box checked.
    Delete
    reload page
After creating the token 5 check box checked.
    After creating the token 5 check box checked.
    Delete
    reload page
Close browser
    close browser