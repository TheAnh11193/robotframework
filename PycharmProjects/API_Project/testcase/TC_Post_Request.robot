*** Settings ***
Library         ExtendedRequestsLibrary
Library         Collections

*** Variables ***
${base_url}     http://httpbin.org


*** Test Cases ***
Put_Registration
    create session  myssion      ${base_url}
    ${body}=        create dictionary   firstname=the    lastname=anh     username=theanh     password=theanh123        email=theanh123@gmail.com
    ${header}=      create dictionary       Content-Type=multipart/form-data
    ${response}=    post request        myssion     /post        data=${body}       headers=${header}

#    log to console ${response.status_code}
#    log to console ${response.content}

#    VALIDATIONS
    ${status_code}=      convert to string      ${response.status_code}
    should be equal     ${status_code}      200
