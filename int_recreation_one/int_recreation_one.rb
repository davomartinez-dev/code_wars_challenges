require 'pry'
require 'prime'

CACHE = { 1 => 1 }

def sum_of_divisors(number)
  return 1 if number == 1
  
  (1..number).select { |n| number % n == 0 }.map { |n| n ** 2 }.inject(:+)
end

def is_perfect_square?(number)
  return true if Math.sqrt(number) % 1 == 0

  false
end

def list_squared(m, n)
  result = []
  (m..n).each do |num|
    if CACHE[num]
      result << [num, CACHE[num]] if CACHE[num]!='no sum'
      next
    elsif Prime.prime?(num)
      CACHE[num] = 'no sum'
      next
    end

    sum_divisors = sum_of_divisors(num)
    if is_perfect_square?(sum_divisors)
      result << [num, sum_divisors]
      CACHE[num] = sum_divisors
    else
      CACHE[num] = 'no sum'
    end  
  end

  result
end

puts list_squared(1, 250)