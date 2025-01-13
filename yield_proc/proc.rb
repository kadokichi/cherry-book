hello_proc = Proc.new do #hello_proc = Proc.new { 'Hello' }
  'Hello'
end

puts hello_proc.call


add_proc = proc { |a = 0, b = 0| a + b }
puts add_proc.call(10, 20)
puts add_proc.call(10)


def greet(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

repeat_proc = Proc.new { |text| text * 2 }
greet(&repeat_proc)


def greet2(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end

shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }

greet2(shuffle_proc, repeat_proc, question_proc)

add_lamdba = -> (a, b) { a + b}
puts add_lamdba.call(10, 20) #lamdbaの場合は引数がピッタリじゃないとエラーになる
