** Settings **
Library     SeleniumLibrary


** Variables **


** Keywords **
Dado que eu acesse a página de cursos livres da Estácio
    Open Browser  https://online.estacio.br/  chrome
    Sleep   5s

E clique no botão Cadastre-se 
    Click Element       ${cadastre-se_button}

E preencha os dados do formulário de Cadastro
    Wait Until Element Is Visible       ${input_nome}
    Click Element                       ${input_nome}
    Input Text                          ${input_nome}    Zidane José
    Click Element                       ${input_email}
    Input Text                          ${input_email}   zidane_01@hotmail.com
    Click Element                       ${input_senha}   
    Input Text                          ${input_senha}   ${senha}

Quando clico em Criar conta
    Click Element                       ${criar_conta}

Então acesso a página com o menu de cursos Livres
    Wait Until Page Contains            ${boasvindas_message}

Dado que eu faça login na página de cursos livres da Estácio
    Open Browser  https://online.estacio.br/  chrome
    Sleep   5s
    Click Element                       ${entrar_button}
    Wait Until Element Is Visible       ${login_input_email}
    Click Element                       ${login_input_email}
    Input Text                          ${login_input_email}     zidane_01@hotmail.com
    Click Element                       ${senha_login}
    Sleep   5s
    Input Text                          ${senha_login}           Brasil2005
    Click Element                       ${login_entrar_button}

Quando adiciono um curso no carrinho de compras
    Wait Until Element Is Visible       ${curso}
    Click Element                       ${curso}
    Wait Until Element Is Visible       ${adicionar_carrinho}
    Click Element                       ${adicionar_carrinho}
    Sleep   10s

Então o carrinho deve conter o curso adicionado
    Wait Until Page Contains            ${curso_adicionado}
    