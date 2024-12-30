country = "italy"

message =
  case country
  when "japan", "日本"
    "こんにちは"
  when "us", "アメリカ"
    "Hellp"
  when "italy", "イタリア"
    "Caio"
  else
    "???"
  end

puts message

#三項演算子
n = 11
message = n >10 ? "10より大きい" : "10より小さい"
puts message

