*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/login/loginLocators.robot
Resource    ../../locators/homepage/homePageLocator.robot
Resource    ../../keywords/general.robot
Resource    ../../../datatest/constans/base.robot
*** Keywords ***
Open web www.saucedemo.com
    Open Browser page
    Wait Until Element Is Visible      ${titlePageLogin} 
Admin Input username & password valid
    Element Should Be Visible     ${inputUserLogin}
    Element Should Be Visible     ${inputPasswordrLogin}
    Input Text    ${inputUserLogin}    ${SUPER_ADMIN}
    Input Text    ${inputPasswordrLogin}    ${PASS_SUPER_ADMIN}

Admin click button login  
    Wait Until Element Is Visible    ${BtnLogin}
    Click Button    ${BtnLogin} 
Web redirect to homescreen page
    Wait Until Element Is Visible    ${txtHeaderHomePage}
    Element Text Should Be    ${txtHeaderHomePage}    Swag Labs
    Sleep    3s