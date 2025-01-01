sum = 0
5.times { |n| sum += n }
puts sum


#nからmまで数値を1ずつ増やす
a = []
10.upto(14) { |n| a << n }
p a

#nからmまで数値を1ずつ減らす
a = []
14.downto(10) { |n| a << n }
p a


#nからmまでxずつ増やす
a = []
1.step(10, 2) { |n| a << n }
p a


a = []
while a.size < 5
  a << 1
end
p a


a = [10, 20, 30, 40, 50]
until a.size <= 3
  a.delete_at(-1)
end
p a


numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum += n
end
puts sum


#無限ループ
numbers = [1, 2, 3, 4, 5]
loop do
  n = numbers.sample
  puts n
  break if n == 5
end

numbers = [1, 2, 3, 4, 5]
while true
  n = numbers.sample
  puts n
  break if n == 5
end


#大域脱出
fruits = ["apple", "melon", "orange"]
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |number|
      puts "#{fruit}, #{number}"
      if fruit == "orange" && number == 3
        throw :done
      end
    end
  end
end


#next
numbers = [1, 2, 3, 4, 5]
numbers.each do |number|
  next if number.even?
  puts number
end


#redo 条件を満たすまで何度も繰り返す
foods = ["ピーマン", "セロリ","トマト"]
count = 0
foods.each do |food|
  print "#{food}は好きですか?"
  answer = ["はい", "いいえ"].sample
  puts answer

  count += 1
  redo if answer != "はい" && count < 2
  count = 0
end
