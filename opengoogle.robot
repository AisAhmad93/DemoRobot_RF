*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
I am access Google Page
    Open Browser      https://www.google.com/    Chrome
    Sleep               3s
    Close Browser
    Sleep               2s
          

    