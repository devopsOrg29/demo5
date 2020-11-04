*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/AmazonUI.robot
Resource  ../Resources/Common.robot
Suite Setup  #IF used, Will start/insert data before the start of the Testsuite
Test Setup  Begin Web Test      #Will start with every Testcase
Test Teardown  End Web Test     #Will end with every Testcase
Suite Teardown  #IF used, Will fetch/get data after the end of the Testsuite

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM1} =  Ferrari 458
${SEARCH_TERM2} =  Lamborghini

*** Test Cases ***
User is able to search for products
    [Documentation]  This is some basic info about the test
        [Tags]  Smoke

	    Search For Product-1
	    Search For Product-2
