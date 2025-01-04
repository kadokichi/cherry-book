require_relative 'product'

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    # @name = name
    # @price = price
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "#{super}, running_time: #{running_time}"
  end
end

dvd = DVD.new('Great movie2', 1500, 120)
puts dvd.name
puts dvd.price
puts dvd.running_time
puts dvd.to_s
