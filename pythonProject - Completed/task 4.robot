*** Variables ***
${barrierField}     //*[@id="dt_barrier_1_input"]
${errorPopUp}       //*[@class="dc-popover__bubble dc-popover__bubble--error"]
${disButton}        //*[@class="btn-purchase btn-purchase--disabled btn-purchase--2"]

*** Keywords ***
Task 4
#   Generating Error
    press keys                                      ${barrierField}     CTRL+A    DELETE
    input text                                      ${barrierField}     +0.01234
#   Verifying Error Message
    wait until page contains element                ${errorPopUp}
    page should contain element                     ${errorPopUp}       message="Contracts more than 24 hours in duration would need an absolute barrier."
    element should be disabled                      ${disButton}
