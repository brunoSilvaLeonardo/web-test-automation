Dado('que esteja na página de cadastro de produto') do
  @home_logada.access_product_register_page
  @register_product = RegisterProductPage.new
end

Quando('realizar o cadastro de um produto com sucesso') do
  # massas de dado
  @product_name = Factory::Dynamic.product_name
  preco = 10
  descricao = "blablabla"
  quantidade = 100

  # chamada do método para cadastrar o produto
  @register_product.register_product(@product_name, preco, descricao, quantidade)
  @list_product = ListProductPage.new
end

Então('o produto deverá ser cadastrado com sucesso') do
  expect(@list_product.products_table.text).to include @product_name
end