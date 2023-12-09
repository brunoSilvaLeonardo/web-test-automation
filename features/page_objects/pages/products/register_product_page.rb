# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class RegisterProductPage < SitePrism::Page
  set_url ''
  element :input_name, '#nome'
  element :input_price, 'input[name="price"]'
  element :input_description, '[data-testid="descricao"]'
  element :input_quantity, '#quantity'
  element :btn_register_product, 'button[data-testid="cadastarProdutos"]'
  
  def register_product(name, price, description, quantity)
    input_name.set name
    input_price.set price
    input_description.set description
    input_quantity.set quantity
    btn_register_product.click
  end
end