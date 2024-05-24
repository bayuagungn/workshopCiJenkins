*** Settings ***
Resource   ../../configs/general.robot
Resource   ../../configs/envDev.robot
Resource   ../../datatest/constans/base.robot


Library    SeleniumLibrary
Library    String
Library    OperatingSystem


*** Keywords ***
Open Browser page
    [Documentation]
	...  Open the browser and navigates to the login page  ...
	
    Open Browser      ${BASE_URL}    ${BROWSER}
    Set Window Size	    ${WINDOW_WIDTH}     ${WINDOW_HEIGHT}
    Set Selenium Timeout     ${TIMEOUT}
    Set Log Level    DEBUG  