a = [1, 2, 3, 4, 5]
p a[1, 3]
p a.values_at(0, 2, 4)
p a[a.size - 1]
p a[-1]
p a[-2, 2]
p a.last
p a.last(3)
p a.first
p a.first(2)


b = []
b.push(1)
b.push(2, 3)
p b


c = [1, 2, 3]
d = [3, 4, 5]
p c | d
p c - d
p c & d

e, *f = 100, 200, 300
p e
p f #200, 300が入る

g = []
h = [2, 3]
g.push(1)
g.push(*h) #配列としてプッシュされない
p g


def greet(*name)
  "#{name.join('と')}、こんにちは"
end

puts greet("田中さん")
puts greet("田中さん", "鈴木さん")
puts greet("田中さん", "鈴木さん", "dydy")


#%記法
p %w!apple melon orange!
p %w(
    apple
    melon
    orange
  )
