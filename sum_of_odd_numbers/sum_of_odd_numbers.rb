require 'pry'

def row_sum_odd_numbers(n)
  return 1 if n == 1

  times = 0
  acc = 1
  x = n
  map = []

  while x >= 1
    times += x
    x -= 1
  end

  times.times do
    map << acc
    acc += 2
  end

  map.last(n).inject(0) { |sum, x| sum + x }
end

puts row_sum_odd_numbers(2)
