*** Settings ***
Resource   ../datatest/constans/base.robot
Resource    ../resources/pages/loginpage/loginPages.robot
Test Teardown  Close Browser
*** Test Cases ***

User Success login 
    [Documentation]  
    [tags]  Regression 
    Given Open web www.saucedemo.com
    When Admin Input username & password valid
    And Admin click button login
    Then Web redirect to homescreen page