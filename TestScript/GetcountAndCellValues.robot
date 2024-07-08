# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                    ../ResourceFile/SFConnect.robot
Suite Setup                 Setup Browser
Suite Teardown              End suite

*** Test Cases ***
GetTable_Row_CountandValues
    [Tags]                  GetContRec
    [Documentation]         Get Record count and read the record cell values.
    Appstate                Home
    LaunchApp               Sales
    ClickText               Contacts
    ClickText               Select a List View: Contacts
    ClickText               All Contacts
    TypeText                Search this list...         vinnu\n
    UseTable                xpath\=//table[@class\='slds-table forceRecordLayout slds-table_header-fixed slds-table--header-fixed slds-table_edit slds-table--edit slds-table_bordered slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable']
    Sleep                   10s
    ${ContactCount}=        GetTableRow                 //last                      skip_header=True            delay=40s
    ${gettabcol}=           GetColHeaderCount
    ${getcellvalue}=        GetCellText                 r2c6                        #get cell value from specific cell
    ${getlastbutoneval}=    GetCellText                 r-2c6                       #get last but one record cell value
    ${getcontsear}=         GetCellText                 r?9890/c7 # search the value from cell in the table and get the cell 6 value
    Sleep                   10s
    Log                     'Table Row Count : ' ${ContactCount}
    Log                     'Table Column Header Count : ' ${gettabcol}
    Log                     'Table Cell value is : ' ${getcellvalue}
    Sleep                   2s

    # End creation of contacts

GetTableNumberAndValue
    [Tags]                  Gettablenoandval
    [Documentation]         Get Table Cell Value based on the Row Number using for Loop
    Appstate                Home
    LaunchApp               Sales
    ClickText               Contacts
    ClickText               Select a List View: Contacts
    ClickText               All Contacts
    TypeText                Search this list...         vinnu\n
    UseTable                xpath\=//table[@class\='slds-table forceRecordLayout slds-table_header-fixed slds-table--header-fixed slds-table_edit slds-table--edit slds-table_bordered slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable']
    Sleep                   10s
    ${ContactCnt}=          GetTableRow                 //last                      skip_header=True            delay=40s
    Log                     ${ContactCnt}
    FOR                     ${i}                        IN RANGE                    1                           ${ContactCnt}+1
        Log                 ${i}
    END

