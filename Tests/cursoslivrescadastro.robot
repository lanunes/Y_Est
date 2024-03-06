** Settings **
Library         SeleniumLibrary
Resource        C:/Y_Est/Pages/Home/Home_Elements.resource
Resource        C:/Y_Est/Pages/Cadastro/Cadastro_Elements.resource
Resource        C:/Y_Est/Pages/Areadoaluno/Areadoaluno_Elements.resource
Resource        C:/Y_Est/Resource/Settings.resource


** Variables **
     

**Keywords**


** Test Cases **
Cenário 1: Validando cadastro com sucesso na pagina de cursos livres da Estácio
    Dado que eu acesse a página de cursos livres da Estácio
    E clique no botão Cadastre-se 
    E preencha os dados do formulário de Cadastro
    Quando clico em Criar conta
    Então acesso a página com o menu de cursos Livres

Cenário 2: Adicionando Curso ao Carrinho de Compras
    Dado que eu faça login na página de cursos livres da Estácio
    Quando adiciono um curso no carrinho de compras
    Então o carrinho deve conter o curso adicionado