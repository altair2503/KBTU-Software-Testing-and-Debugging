*** Settings ***
Resource  ../resources/resources.robot
Suite Setup    Open Browser for Test
Suite Teardown  Close Browser for Test


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
    Log out
#

BUY_PRODUCT
    Log in
    Buy Product