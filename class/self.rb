class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    self.name = 'Bob'
  end

  def rename_to_carol
    self.name = 'Carol'
  end

  def rename_to_dave
    @name = 'Dave'
  end
end

user = User.new('Alice')

#selfを付けないと呼び出せない
user.rename_to_bob
puts user.name

user.rename_to_carol
puts user.name

user.rename_to_dave
puts user.name


class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format_price(price)
    "#{price}"
  end

  def to_s
    formated_price = Product.format_price(price) #self.class.format_price(price)も同じ
    puts "name: #{name}, price: #{formated_price}"
  end
end

product = Product.new('Great movie', 1000)
product.to_s
