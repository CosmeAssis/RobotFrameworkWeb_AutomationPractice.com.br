*** Settings ***
Documentation   Testes automatizados Web utilizando o Robot Framework
Resource    ../Resources/Pages/HomePages.robot
Resource    ../Resources/base.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
CN0001-Cadastro de usuário com sucesso
    [Tags]    cadastro_sucesso
    Dado que acesso o site do Qazando Shop
    E clico em Cadastro
    Quando preencho o campo Nome
    E preencho o campo E-mail
    E preencho o campo Senha
    E clicar no botão Cadastrar
    Então mensagem Cadastro realizado! é exibida

CN0002-Tentativa de cadastro sem Nome
    [Tags]    cadastro_semnome
    Dado que acesso o site do Qazando Shop
    E clico em Cadastro
    Quando preencho o campo E-mail
    E preencho o campo Senha
    Então mensagem O campo nome deve ser preenchido é exibida

CN0003-Tentativa de cadastro sem E-mail
    [Tags]    cadastro_sememail
    Dado que acesso o site do Qazando Shop
    E clico em Cadastro
    Quando preencho o campo Nome
    E preencho o campo Senha
    Então mensagem O campo e-mail deve ser prenchido corretamente é exibida

CN0004-Tentativa de cadastro sem Senha
    [Tags]    cadastro_semsenha
    Dado que acesso o site do Qazando Shop
    E clico em Cadastro
    Quando preencho o campo Nome
    E preencho o campo E-mail
    Então mensagem O campo senha deve ter pelo menos 6 dígitos é exibida