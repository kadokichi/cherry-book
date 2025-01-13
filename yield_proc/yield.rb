def greet
  puts 'おはよう'
  if block_given?
   yield
  end
  puts 'こんばんは'
end

greet do
  puts 'こんにちは'
end

greet #ブロックなしでは呼び出せない


def greet2
  puts 'おはよう2'
  text = yield 'こんにちは2'
  puts text
  puts 'こんばんは2'
end

greet2 do |text|
  text * 2
end


def greet3(&block)
  puts 'おはよう3'
  text = block.call('こんにちは3')
  puts text
  puts 'こんばんは3'
end

greet3 do |text|
  text * 2
end


def greet4(&block)
  puts 'おはよう4'
  text = 
    if block.arity == 1 #ブロックパラメーターが1の場合
      yield 'こんにちは'
    elsif block.arity == 2
      yield 'こんに', 'ちは'
    end
  puts text
  puts 'こんばんは4'
end

greet4 do |text|
  text * 2
end

greet4 do |text_1, text_2|
  text_1 * 2 + text_2 * 2
end
