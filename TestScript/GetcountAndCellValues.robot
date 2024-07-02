# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                   ../ResourceFile/SFConnect.robot
Suite Setup                Setup Browser
Suite Teardown             End suite

*** Test Cases ***
Entering a Contacts
    [Tags]                 GetContRec
    Appstate               Home
    LaunchApp              Sales
    ClickText              Contacts
    ClickText          Select a List View: Contacts
    ClickText          All Contacts
    TypeText           Search this list...         vinnu\n

    # End creation of contacts


