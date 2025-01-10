module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  extend Loggable #モジュールのメソッドを特異メソッド(クラスメソッド)として追加する

  def self.create_products(name)
    log 'create_products is called'
  end
end

product = Product.create_products([])
puts product

product2 = Product.log('Hello')
puts product2
