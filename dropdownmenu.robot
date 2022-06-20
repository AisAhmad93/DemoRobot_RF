*** Settings  ***
Library             SeleniumLibrary
#Test Setup          Open Browser        ${base_url}         ${browser_type}
#Test Teardown       Close Browser
Suite Setup         Open Browser
Suite Teardown      Close Browser

*** Variables ***
${base_url}         https://the-internet.herokuapp.com/dropdown           
${browser_type}     Chrome

*** Test Cases ***
I Selecting "option 2" in dropdown menu
    Maximize Browser Window
    Element Should Be Visible           //select[@id="dropdown"]
    Select From List By Index           //select[@id="dropdown"]            2
    List Selection Should Be            //select[@id="dropdown"]            Option 2
    Sleep       2s


I Selecting "option 1" in dropdown menu
    Maximize Browser Window
    Element Should Be Visible           //select[@id="dropdown"]
    Select From List By Index           //select[@id="dropdown"]        1
    List Selection Should Be            //select[@id="dropdown"]        Option 1
    Sleep                   2s