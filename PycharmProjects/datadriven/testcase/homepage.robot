*** Settings ***
Resource             ../../objectBase.robot
Library              DataDriver     testdata/data.xlsx   sheet_name=Sheet1
Suite Setup          run keywords
                     ...   open the browser

Test Template        add to cart
*** Keywords ***
add to cart
    [Arguments]     ${search_product_name}         ${filter_name}       ${product_name}
    serach products         ${search_product_name}
    click on search button
    Check box option        ${filter_name}
    Click on product        ${product_name}
    Click on Add to cart
    Back to home

*** Test Cases ***
TC-DataDriven-${Test_Case}







