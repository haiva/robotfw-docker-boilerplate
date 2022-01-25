*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Library  Collections
Library     RequestsLibrary


*** Keywords ***
Create Session And Assert
    [Arguments]    ${site}    ${max_retries}    ${expected_status}
    Create Session  getwebsite        ${site}   verify=false    max_retries=${max_retries}  backoff_factor=1
    ${resp}=        GET On Session  getwebsite  /       ${expected_status}
    Should Be Equal As Strings      ${resp.status_code}     ${expected_status}