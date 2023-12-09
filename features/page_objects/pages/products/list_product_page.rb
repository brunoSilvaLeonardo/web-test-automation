# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class ListProductPage < SitePrism::Page
  set_url ''

  element :products_table, 'table.table tbody'
  
end