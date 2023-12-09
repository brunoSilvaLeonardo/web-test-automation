#language: pt

@full_regression
@cadastro_usuario
Funcionalidade: Cadastrar novo usuário
  Sendo um usuário logado, desejo cadastrar novos usuários


Contexto: Estar logado com usuário com permissão de cadastrar novos usuários
  Dado que esteja na Home Page
  Quando realizar login com e-mail "fulano@qa.com" e senha "teste"
  Então deverá realizar o login com sucesso

@cadastrar_usuario_com_sucesso
Cenário: Cadastrar novo usuário com sucesso
  Dado que esteja na página de cadastro de usuário
  Quando realizar o cadastro de um usuário com e-mail "<email>" e senha "<senha>" sucesso
  Então o usuário deverá ser listado com sucesso na página de listagem

  Exemplos:
    | email             | senha  |
    | teste@teste.com   | 123456 |