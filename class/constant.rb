class TrafficLight
  COLORS = [
    GREEN = 0,
    YELLOW = 1,
    RED = 2
  ]
end

puts TrafficLight::GREEN
puts TrafficLight::YELLOW
puts TrafficLight::RED
p TrafficLight::COLORS

NUMBERS = [1, 2, 3].map { |n| n * 10 }
p NUMBERS

class Product
  DEFAULT_PRICE = 0
  #再代入できてしまう
  DEFAULT_PRICE = 1000

  SOME_NAMES =['Foo', 'Bar', 'Baz'].freeze #各要素は変更できてしまう
  SOME_NAMES =['Foo', 'Bar', 'Baz'].map(&:freeze).freeze #要素の変更不可
  # ↑SOME_NAMES =['Foo'.freeze, 'Bar'.freeze, 'Baz'.freeze].freeze
end

puts Product::DEFAULT_PRICE
#外部でも変更できる
Product::DEFAULT_PRICE = 3000
puts Product::DEFAULT_PRICE

#再代入を防ぐ
Product.freeze
Product::DEFAULT_PRICE = 5000
puts Product::DEFAULT_PRICE
