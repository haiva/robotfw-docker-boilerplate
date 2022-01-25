*** Settings ***
Documentation  Robot FW Boilerplate test suite. \n\nTest a single test using 'robot-boilerplate\tests>robot -t "Get Request Test Website" suites' \n\nTest all tests using 'robot --outputdir reports suites' \n\nUse Docker to run all tests using 'docker-compose up'

Library  Collections
Resource    ../resources/web_request_keywords.resource
Library     RequestsLibrary

Suite Teardown  Delete All Sessions

*** Test Cases ***
Get Request Test Website
    Create Session And Assert   https://robotframework.org/     5   200
