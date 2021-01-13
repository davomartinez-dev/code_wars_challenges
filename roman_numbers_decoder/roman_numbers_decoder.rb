require 'pry'

def solution(roman)
  sum = 0
  numbers = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  }

  (0..roman.length - 2).each do |i|
    numbers[roman[i].to_sym] >= numbers[roman[i + 1].to_sym] ?
      sum += numbers[roman[i].to_sym] :
      sum -= numbers[roman[i].to_sym]
  end

  sum += numbers[roman[roman.length - 1].to_sym]

  sum
end

puts solution('MMVIII')
