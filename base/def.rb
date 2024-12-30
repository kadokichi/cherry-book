def greet(country)
  return puts "countryを入力してください" if country.nil?
  if country == "japan"
    puts "こんにちは"
  else
    puts "hello"
  end
end

greet("japan")
greet("us")
greet(nil)
