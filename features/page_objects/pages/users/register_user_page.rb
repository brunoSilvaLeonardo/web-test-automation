#frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class RegisterUserPage < SitePrism::Page
  set_url ''
  element :input_name, '[data-testid="nome"]'
  element :input_email, '[data-testid="email"]'
  element :input_password, '[data-testid="password"]'
  element :btn_register_user, '[data-testid="cadastrarUsuario"]'

  def register_user(name, email, password)
    input_name.set name
    input_email.set email
    input_password.set password
    btn_register_user.click
  end
end