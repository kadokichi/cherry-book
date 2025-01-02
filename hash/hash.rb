currencies = { 'japan' => 'yen', 'us' => 'doller', 'india' => 'rupee' }
#新しい値を追加
currencies['italy'] = 'euro'
p currencies

#既存の場合は上書きされる
currencies['japan'] = '円'
p currencies

#値を取得する
p currencies['india']
p currencies['china']

#値を削除する
currencies.delete('japan')
p currencies

currencies2 = { 'japan' => 'yen', 'us' => 'doller', 'india' => 'rupee' }
currencies2.each do |key, value|
  puts "#{key} : #{value}"
end

#上と同じコード例
currencies2.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end
