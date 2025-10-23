*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***

*** Keywords ***

*** Test Cases ***
SIGN_UP_TEST
    Sign Up
#

LOG_IN_TEST
    Log in
#

LOG_OUT_TEST
    Log in
    Log out
#

BUY_PRODUCT
    Log in
    Buy Product