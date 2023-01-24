*** Settings ***
Resource    ../base.robot
Resource   ../Maps/HomeMaps.robot

*** Variables ***
${url}    http://automationpratice.com.br/

*** Keywords ***
Dado que acesso o site do Qazando Shop
    Go To    ${url}

E clico em Cadastro
    Click Element    ${HomeBtnCadastro}
