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
    ClickUntil             New Contact                 New
    UseModal               On
    TypeText               Phone                       +9173966374987
    Picklist               Salutation                  Mr.
    TypeText               First Name                  TaraDoneUploadFile
    TypeText               Last Name                   ch
    TypeText               Person Location             this345
    ComboBox               Search Accounts...          GenePoint
    TypeText               Email                       tvsh@gmail.com
    TypeText               Title                       project30
    ClickText              Save                        partial_match=False
    UseModal               Off
    Sleep                  10s

    # End creation of contacts


