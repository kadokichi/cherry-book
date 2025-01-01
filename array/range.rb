#1..5 (1~5)
#1...5 (1~4)

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end

puts charge(2)
puts charge(8)
puts charge(15)
puts charge(19)


sum = 0
(1..4).each { |n| sum += n}
puts sum


#endless range
numbers = [10, 20, 30, 40, 50]
p numbers[2..] #3番目以降の要素を取り出す
p numbers[..1] #2番目以前の要素を取り出す
p numbers[nil..nil] #全範囲
