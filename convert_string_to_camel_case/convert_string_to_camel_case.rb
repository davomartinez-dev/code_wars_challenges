require 'pry'

def it_is_dash_or_underscore(char)
  char = char.ord
  return true if char == 45 || char == 47 || char == 95

  false
end

def to_camel_case(_str)
  str = ''
  nextLetter = false
  _str.each_char do |x|
    if it_is_dash_or_underscore(x)
      nextLetter = true
    else
      if nextLetter
        x.upcase!
        nextLetter = !nextLetter
      end
      str << x
    end
  end
  str
end
