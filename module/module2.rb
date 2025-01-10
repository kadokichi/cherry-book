module Loggable
  class << self
    def log(text) #def self.log(text)
      puts "[LOG] #{text}"
    end
  end
end

#newをせずに呼び出せる
puts Loggable.log('Hello')


module Loggable2
  def log(text)
    puts "[LOG] #{text}"
  end

  module_function :log
end

class Product
  include Loggable2

  def title
    log 'title is called'
    "A Great Movie"
  end
end

puts Loggable2.log('Good')

product = Product.new
puts product.title
