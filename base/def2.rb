#メソッドにデフォルト値を入れると引数なしで呼び出せる
def greet(country = "japan")
  return puts "countryを入力してください" if country.nil?
  if country == "japan"
    puts "こんにちは"
  else
    puts "hello"
  end
end

greet()
greet("us")


def default_args(a, b, c = 0, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
puts default_args(1, 2)
puts default_args(1, 2, 3)
puts default_args(1, 2, 3, 4)

#他のメソッドの戻り値を指定することもできる
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  "BAR"
end

puts foo


#破壊的メソッド
def reverse_upcase(s)
  s.reverse.upcase
end

s = "ruby"

puts reverse_upcase(s)
puts s

def reverse_upcase!(s)
  s.reverse!
  s.upcase!
  s
end

s = "java"
puts reverse_upcase!(s)
puts s


#エンドレスメソッド
def greet = "Hello"
def add(a, b) = a + b

puts greet
puts add(1, 2)
