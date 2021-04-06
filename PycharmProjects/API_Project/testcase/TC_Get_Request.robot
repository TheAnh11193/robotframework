*** Settings ***
#Library         RequestLibrary
Library         ExtendedRequestsLibrary
*** Variables ***
${base_url}     http://www.google.com

*** Test Cases ***
Get_API
    create session      myssion      ${base_url}
    ${response}=    get request     myssion        /
#    Displays
#    log to console      ${response.status_code}
#    log to console      ${response.content}
#    log to console      ${response.headers}

#    VALIDATIONS
    ${status_code}=      convert to string   ${response.status_code}
    should be equal  ${status_code}      200