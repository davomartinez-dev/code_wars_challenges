require 'pry'

def digits(n)
  Math.log10(n).floor.downto(0).map { |i| (n / 10**i) % 10 }
end

def followed_by_zeros?(n)
  return true if n.reduce(:+) == n[0]
  
  false
end

def is_interesting(number, awesome_phrases) 
  return 0 if number < 99

  x = followed_by_zeros?(digits(number))
  binding.pry
end

puts is_interesting(9000, [1337, 256])
# puts is_interesting(1335, [1337, 256])