Dado('que esteja na página de cadastro de usuário') do
  @home_logada.access_user_register_page
  @register_user = RegisterUserPage.new
end

Quando('realizar o cadastro de um usuário com e-mail {string} e senha {string} sucesso') do |email, password|
  @user_name = Factory::Dynamic.product_name
  @register_user.register_user(@user_name, email, password)
  @list_user = ListUserPage.new
end



Então('o usuário deverá ser listado com sucesso na página de listagem') do
  expect(@list_user.users_table.text).to include @user_name
end


