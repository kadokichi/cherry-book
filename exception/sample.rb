puts 'Start'

begin
  1 + '10'
rescue
  puts '例外が発生したが、このまま続行する'
end

puts 'End'


begin
  1 / 0
rescue => e
  puts "エラークラス: #{e.class}"
  puts "エラーメッセージ: #{e.message}"
  puts "バックトレース: --------"
  puts e.backtrace
  puts "--------"
end

puts 'End'


# begin
#   1 / 0
# rescue => ZeroDivisionError
#   puts "0で除算しました"
# end


# begin
#   'abc'.foo
# rescue ZeroDivisionError, NoMethodError
#   puts "0で除算したか、存在しないメソッドが呼び出されました"
# end


begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError => e
  puts "0で除算したか、存在しないメソッドが呼び出されました"
  puts "エラー: #{e.class} #{e.message}"
end
