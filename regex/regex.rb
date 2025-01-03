text = <<TEXT
I love Ruby
Python is great language
Java and Javasucript are different
TEXT

puts text.scan(/[A-Z][A-Za-z]+/)


text = <<TEXT
私の郵便番号は123-4567です。
俺の住所は789-1234 沖縄県沖縄市1234です。
TEXT

puts text.gsub(/(\d{3})(\d{4})/) { "#{$1} - #{$2}" }


text = "私の誕生日は1992年10月3日です。"
text2 = "私の誕生日は2000年1月31日です。"
m = /(\d+)年(\d+)月(\d+)日/.match(text)
m2 = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text2)

puts m[0]
puts m[1]
puts m[2]
puts m[3]

puts m2[:year]
puts m2[:month]
puts m2[:day]
