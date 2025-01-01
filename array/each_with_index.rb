fruits = ['apple', 'melon', 'banana']
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }

fruits = ['apple', 'melon', 'banana']
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }


fruits2 = ['apple', 'melon', 'banana']
p fruits2.map.with_index { |fruit, i| "#{i}: #{fruit}" }

fruits2 = ['apple', 'melon', 'banana']
p fruits2.map.with_index(10) { |fruit, i| "#{i}: #{fruit}" }


fruits3 = ['apple', 'orange', 'melon']
p fruits3.delete_if.each_with_index { |fruit, i| fruit.include?("a") && i.odd? }


dimentions = [
  [10, 20],
  [30, 40],
  [50, 60]
]

areas = []
dimentions.each do |length, width|
  areas << length * width
end

p areas


dimentions = [
  [10, 20],
  [30, 40],
  [50, 60]
]

dimentions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end

