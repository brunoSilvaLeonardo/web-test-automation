# language: pt

Funcionalidade: Cadastro de Produtos
  Sendo um usuário da aplicação ServeRest
  Gostaria de poder cadastrar produtos
  Para poder vender

Contexto: Estar logado com usuário administrador
  Dado que esteja na Home Page
  Quando realizar login com e-mail "fulano@qa.com" e senha "teste"
  Então deverá realizar o login com sucesso

@cadastrar_produto_com_sucesso
Cenário: Cadastrar produto com sucesso
  Dado que esteja na página de cadastro de produto
  Quando realizar o cadastro de um produto com sucesso
  Então o produto deverá ser cadastrado com sucesso