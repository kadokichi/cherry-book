class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end
end
User.new('Alice', 20)


class User2
  def initialize(name)
    @name = name
  end

  def hello
    puts "Hello, I am #{@name}"
  end
end
user = User2.new('Bob')
user.hello


class User3
  #@nameを読み書きできるメソッド
  attr_accessor :name

  #attr_reader :name 読み取り用のメソッドを定義
  #attr_writer :name 書き取り用のメソッドを定義

  def initialize(name)
    @name = name
  end
end

user = User3.new('Bob')
user.name = 'Tanaka'
puts user.name
