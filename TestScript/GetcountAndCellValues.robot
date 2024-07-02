# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource               ../ResourceFile/SFConnect.robot
Suite Setup            Setup Browser
Suite Teardown         End suite

*** Test Cases ***
Entering a Contacts
    [Tags]             GetContRec
    [Documentation]    Get Record count and read the record cell values.
    Appstate           Home
    LaunchApp          Sales
    ClickText          Contacts
    ClickText          Select a List View: Contacts
    ClickText          All Contacts
    TypeText           Search this list...         vinnu\n
    UseTable            xpath\=//div[@class\='slds-grid listDisplays safari-workaround-anchor']
    Sleep               20s
    ${ContactCount}=    GetTableRow                 //last    skip_header=True    delay=40s
    Sleep              30s

    # End creation of contacts


