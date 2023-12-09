# language: pt

@full_regression
@login
Funcionalidade: Login no Front ServeRest
  Sendo um usuário da aplicação ServeRest
  Gostaria de poder realizar Login
  Para poder visualizar produtos e cadastros

Contexto: Começa na Home Page
  Dado que esteja na Home Page

@login_com_sucesso
Cenário: Realizar login com sucesso
  Quando realizar login com e-mail "fulano@qa.com" e senha "teste"
  Então deverá realizar o login com sucesso

@login_com_erro
Esquema do Cenário: Tentar realizar login com credenciais inválidas
  Quando realizar login com e-mail "<email>" e senha "<senha>"
  Então deverá exibir a mensagem "<mensagem>"

  Exemplos:
    | email             | senha  | mensagem                                 |
    | teste@teste.com   |        | Password é obrigatório                   |
    |                   | 123456 | Email não pode ficar em branco           |
    | teste@teste.com   | 123456 | Email e/ou senha inválidos               |


