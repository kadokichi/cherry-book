puts 'He said, "Don\'t speak."'
puts %q!He said, "Don't speak."!

something = "Hello"
puts "He said, \"#{something}\""
something = "Hello"
puts %Q!He said, "#{something}"!

something = "Bye"
puts "He said, \"#{something}\""
something = "Bye"
puts %!He said, "#{something}"!

puts %q?He said, "Don't speak."?
puts %q{He said, "Don't speak."}
