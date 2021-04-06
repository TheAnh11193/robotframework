*** Settings ***
Resource            ../../objectBase.robot

*** Keywords ***
open the browser
    Open Browser       ${base_url}     ${BROWSER}
    Maximize Browser Window

serach products
    [Arguments]                ${txt_input}
    Wait Until Element Is Visible       ${txt_Search}       10s
    Input Text         ${txt_Search}            ${txt_input}

click on search button
    Wait Until Element Is Visible       ${btn_Search}       10s
    Click Element           ${btn_Search}

Scroll element
    [Arguments]                         ${element}
    Wait Until Element is visible       ${element}        15s
    Scroll Element Into View            ${element}
    Wait Until Element is visible       ${element}        15s

Check box option
    [Arguments]                         ${option}
    Wait Until Element is visible       ${txt_ScreenTechnology}        15s
    Scroll element                      ${txt_ScreenTechnology}
    Click Element                       xpath=//div[contains(text(), "${option}")]/parent::div/preceding-sibling::div/div

Click on product
    [Arguments]                         ${product_name}
    sleep    3s
    Wait Until Element is visible       xpath=//span[contains(text(), '${product_name}')]        15s
    Click Element                       xpath=//span[contains(text(), '${product_name}')]

Click on Add to cart
    Wait Until Element is visible       ${btn_add_to_cart}        15s
    Click Element                       ${btn_add_to_cart}

Back to home
    Wait Until Element is visible       ${btn_home}        15s
    Click Element                       ${btn_home}
