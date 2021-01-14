require 'pry'

def valid_parentheses(string)
  open_par = []
  closed_par = []
  parentheses = ['(', ')']

  string.strip.chars.select { |char| parentheses.include?(char) }.map do |ele| 
                                                                        if ele == '(' 
                                                                          open_par.push(ele)
                                                                        else
                                                                          return false if open_par.empty?

                                                                          open_par.pop()
                                                                        end
                                                                      end

  return open_par.empty? ? true : false
end

puts valid_parentheses(")test")