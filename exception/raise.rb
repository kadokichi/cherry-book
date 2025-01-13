def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise ArgumentError, "無効な国です。#{country}"
  end
end

puts currency_of(:japan)
puts currency_of(:italy)
