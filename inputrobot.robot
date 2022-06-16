*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser         ${base_url}      ${browser_type}
Test Teardown   Close Browser

*** Variables ***
${base_url}         http://uitestingplayground.com/textinput     
${browser_type}     Chrome

*** Test Cases ***
I am typing my name in the field    
    Maximize Browser Window
    Input Text          //input[@class="form-control"]       Ais Ahmad
    Sleep               5s
    Click element       //button[@class="btn btn-primary"]
    Sleep               3s
    Element Should Contain  //button[@class="btn btn-primary"]  Ais Ahmad
    Sleep               3s

    