require 'date'

records = [
  [2021],
  [2019, 5],
  [2017, 11, 25]
]

records.map do |record|
  case record
  in [y]
    p Date.new(y, 1, 1)
  in [y, m]
    p Date.new(y, m, 1)
  in [y, m, d]
    p Date.new(y, m, d)
  end
end


cars = [
  {name: 'The Beatle', engine: '105ps'},
  {name: 'Prius', engine: '98ps', motor: '72ps'},
  {name: 'Tesla', motor: '306ps'}
]

cars.each do |car|
  case car
  in {name:, engine:, motor:}
    puts "Hybrid: #{name} / engine: #{engine} / motor: #{motor}"
  in {name:, engine:}
    puts "Gasoline: #{name} / engine: #{engine}"
  in {name:, motor:}
    puts "EV: #{name} / motor: #{motor}"
  end
end
