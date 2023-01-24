*** Settings ***
Resource    ../base.robot
Resource   ../Maps/HomeMaps.robot

*** Keywords ***
Dado que acesso o site do Qazando Shop
    Abrir o navegador

E clico em Cadastro
    Click Element    ${HomeBtnCadastro}
