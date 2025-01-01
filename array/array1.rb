numbers = []
numbers << 1
numbers << 2
numbers << 3
numbers << 1
numbers << 2
numbers << 3

#配列から奇数を削除する
numbers.delete_if do |number|
  number.odd?
end

p numbers


numbers2 = [1, 2, 3, 4]
sum = 0

numbers2.each do |number2|
  sum_value = number2.even? ? number2 * 10 : number2
  sum += sum_value
end

puts sum


#do end を省略する書き方
numbers3 = [1, 2, 3, 4]
sum = 0

numbers3.each { |number3| sum += number3}

puts sum
