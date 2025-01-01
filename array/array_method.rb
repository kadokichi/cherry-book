numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map { |n| n * 10}
p new_numbers


numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even? }
#numbers.map(&:select)
p even_numbers


numbers = [1, 2, 3, 4, 5, 6]
non_mulutiple_of_three = numbers.reject { |n| n % 3 == 0 }
p non_mulutiple_of_three


numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.find { |n| n.even? }
p even_number


numbers = [1, 2, 3, 4]
p numbers.sum
p numbers.sum(10)


chars = ["a", "b", "c"]
p chars.join
p chars.join("-")
