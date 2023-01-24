*** Settings ***
Resource    ../Libraries/Libraries.robot

*** Variables ***
*** Settings ***
Resource    ../Resources/Maps/HomeMaps.robot

*** Keywords ***
Abrir o navegador
    Open Browser    http://automationpratice.com.br/  chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser