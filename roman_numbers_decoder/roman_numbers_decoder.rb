require 'pry'

def solution(roman)
  sum = 0
  to_rest = nil
  numbers = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  }
  roman = roman.split('')
  roman.each_with_index do |char, index|
    # binding.pry
    if !roman[index + 1].nil? && numbers[char.to_sym] >= numbers[roman[index + 1].to_sym]
      if to_rest.nil?
        sum += numbers[char.to_sym]
      else
        sum += numbers[char.to_sym] - numbers[roman[index - 1].to_sym]
        to_rest = nil
      end
    else
      if to_rest.nil?
        to_rest = numbers[char.to_sym]
      else
        sum += numbers[char.to_sym] - numbers[roman[index - 1].to_sym]
        to_rest = nil
      end
    end
  end
  sum
end

puts solution('XXI')
