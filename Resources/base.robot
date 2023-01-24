*** Settings ***
Resource    ../Libraries/Libraries.robot
Variables    ../Resources/Maps/HomeMaps.py

*** Variables ***
${browser}           googlechrome

*** Keywords ***
Abrir o navegador
    Open Browser    ${browser}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser