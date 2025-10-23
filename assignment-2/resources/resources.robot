*** Settings ***
Library  SeleniumLibrary
Variables   ./locators.py
Variables   ./testData.py
Variables   ./browserConfig.py
*** Keywords ***
Log in
    Open Browser    ${baseUrl}      Chrome      options=${CHROME_OPTIONS}
    wait until page contains element    ${logInButton}    timeout=80      error=logInButtonNotFound
    sleep   1s
    click element   ${logInButton}
    wait until page contains element     ${loginUsernameField}    timeout=80      error=logInUsernameNotFound
    sleep   1s
    input text      ${loginUsernameField}      ${login}
    Input Password    ${loginPasswordField}      ${password}
    Sleep    1s
    Click Element    ${logInFormButton}
    Sleep    2s

Close Browser
    Close All Browsers

Sign Up
    Open Browser    ${baseUrl}      Chrome  options=${CHROME_OPTIONS}
    wait until page contains element    ${signUpButton}    timeout=80      error=logInButtonNotFound
    sleep   1s
    click element   ${signUpButton}
    wait until page contains element     ${signUpUsername}    timeout=80      error=logInUsernameNotFound
    sleep   1s
    Input Text    ${signUpUsername}    ${login}
    Sleep    1s
    Input Password    ${signUpPassword}    ${password}
    Sleep    1s
    Click Element    ${signUpFormButton}
    Sleep    2s

Log out
    wait until page contains element    ${logOutButton}    timeout=80    error=logOutButtonNotFound
    sleep   1s
    click element   ${logOutButton}
    Sleep    2s

Buy Product
    Wait Until Page Contains Element    ${openProduct}    timeout=80    error=openProductButtonNotFound
    Sleep    1s
    Click Element   ${openProduct}
    Sleep   1s

    Wait Until Page Contains Element    ${addToCart}    timeout=80    error=addToCartButtonNotFound
    Sleep    1s
    Click Element   ${addToCart}
    Sleep    1s

    Handle Alert    action=ACCEPT
    Sleep    1s

    Wait Until Page Contains Element    ${openCart}    timeout=80    error=cartButtonNotFound
    Sleep    1s
    Click Element   ${openCart}
    Sleep    1s

    Wait Until Page Contains Element    ${placeOrder}    timeout=80    error=placeOrderButtonNotFound
    Sleep    1s
    Click Element   ${placeOrder}
    Sleep    1s

    Wait Until Page Contains Element    ${nameField}    timeout=80    error=placeOrderButtonNotFound
    Input text    ${nameField}  ${name}
    Sleep   1s
    Input text    ${countryField}   ${country}
    Sleep   1s
    Input text    ${cityField}      ${city}
    Sleep   1s
    Input text    ${cardField}      ${card}
    Sleep   1s
    Input text    ${monthField}     ${month}
    Sleep   1s
    Input text    ${yearField}      ${year}
    Sleep   1s

    Wait Until Element Is Visible    ${purchase}    timeout=80      error=purchaseButtonNotFound
    Click Element   ${purchase}
    Sleep   1s

    Wait Until Element Is Visible    ${purchaseOk}    timeout=80    error=purchaseOkButtonNotFound
    Click Element   ${purchaseOk}
    Sleep   2s






