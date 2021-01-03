require 'pry'

def find_outlier(integers)
  odd_num = []
  even_mum = []

  integers.each do |num|
    odd_num.push(num) if num.odd?
    even_mum.push(num) if num.even?

    break if odd_num.length > 1 && even_mum.length > 0 || odd_num.length > 0 && even_mum.length > 1
  end

  odd_num.length == 1 ? odd_num[0] : even_mum[0]
end

# puts find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])
# puts find_outlier([160, 3, 1719, 19, 11, 13, -21])
puts find_outlier([1, 2, 3])
