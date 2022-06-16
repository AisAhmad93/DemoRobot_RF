*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser         ${base_url}      ${browser_type}
Test Teardown   Close Browser

*** Variables ***
${base_url}         https://demoqa.com/radio-button     
${browser_type}     Chrome

*** test case ***
I click Radio button in impressive data
    Maximize Browser Window
    Click Element                        //label[@for="impressiveRadio"]
    Element Should Be Visible        //p[@for="mt-3"]
    Element Should Contain           //span[@class="text-success"]   Impressive
