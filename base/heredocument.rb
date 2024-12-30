a = <<TEXT
これはドキュメントです。
複数行にわたる長い文字列を作るのに便利です。
TEXT
puts a

def some_method
  <<-TEXT
    これはヒアドキュメントです。
    <<-を使うと最後の識別子をインデントさせることができます。
    TEXT
end
puts some_method

def some_method
  <<~TEXT
    これはヒアドキュメントです。
    <<~を使うと内部文字列のインデントを無視されます。
    TEXT
end
puts some_method

name = "KDY"
a = <<TEXT
ようこそ、#{name}さん!
以下のメッセージをご覧ください!
TEXT
puts a

name = "KDY"
a = <<'TEXT'
ようこそ、#{name}さん!
以下のメッセージをご覧ください!
TEXT
puts a

