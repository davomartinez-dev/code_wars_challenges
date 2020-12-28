require 'pry'

def count_bits(n)
  ones = 0
  while n > 0
    ones += 1 if n.even? == false
    n /= 2
  end
  ones
end

puts count_bits(7) # 3
puts count_bits(4) # 1
