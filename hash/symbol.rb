currencies = { :japan => 'yen', :us => 'doller', :india => 'rupee' }
p currencies[:japan]


status = :done

case status
when :todo
  puts 'これからやります'
when :doing
  puts '今やってます'
when :done
  puts '完了しました'
end


currencies2 = { japan: 'yen', us: 'doller', india: 'rupee' }
p currencies2

#キー、値も共にシンボルの場合
currencies3 = { japan: :yen, us: :doller, india: :rupee }
p currencies3
