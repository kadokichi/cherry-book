#valueパターン
country = 'india'

case country
in 'japan'
  puts "こんにちは"
in 'us'
  puts "Hello"
in 'italy'
  puts "Ciao"
else
  puts 'UnKnown'
end


#valiableパターン
case 'Alice'
in obj
  puts "obj=#{obj}"
end

case 123
in obj
  puts "obj=#{obj}"
end

case [10, 20]
in obj
  puts "obj=#{obj}"
end


records = [
  [1, 1, 1],
  [1, 2, 3]
]

records.each do |record|
  case record
  in [n, ^n, ^n]
    puts "all same: #{record}"
  else
    puts "not same: #{record}"
  end
end


#arrayパターン
case [1, 2, 3, 4, 5]
in [1, *rest] # *は任意の長さを指定
  puts "rest=#{rest}"
end


#asパターン
case {name: 'Alice', age: 20, gender: :female}
in {name: String => name, age: 18.. => age}
  puts "name=#{name}, age=#{age}"
end

case {name: 'Alice', age: 20, gender: :female}
in {name: String, age: 18..} => person
  puts "person=#{person}"
end


#alternativeパターン
case 2
in 0 | 1 | 2
  puts 'matched'
end

case {name: 'Bob', age: 25}
in {name: 'Alice' | 'Bob' => name, age:}
  puts "name=#{name}, age=#{age}"
end


#findパターン
case [13, 11, 9, 6, 12, 10, 15, 5, 7, 14]
in [*, 10.. => a, 10.. => b, 10.. => c, *]
  puts "a=#{a}, b=#{b}, c=#{c}"
end
