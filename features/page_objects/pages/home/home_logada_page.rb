# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class HomeLogadaPage < SitePrism::Page
  set_url '/admin/home'

  element :btn_logout, 'button[data-testid="logout"]'
  element :h1_message_welcome, 'h1'
  element :a_access_register_product, '[data-testid="cadastrar-produtos"]'
  element :a_access_register_user, '[data-testid="cadastrar-usuarios"]'

  def access_product_register_page
    a_access_register_product.click
  end

  def access_user_register_page
    a_access_register_user.click
  end
end
