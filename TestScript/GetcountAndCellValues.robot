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
    TypeText           Search this list...         test\n
    UseTable            xpath\=//table[@class\='slds-table forceRecordLayout slds-table_header-fixed slds-table--header-fixed slds-table_edit slds-table--edit slds-table_bordered slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable']
    Sleep               10s
    ${ContactCount}=    GetTableRow                 //last    skip_header=True    delay=40s
    ${gettabcol}=       GetColHeaderCount           
    Sleep              10s
    Log                'Table Row Count : ' ${ContactCount}
    Log                'Table Column Header Count : ' ${gettabcol}
    Sleep              2s

    # End creation of contacts


