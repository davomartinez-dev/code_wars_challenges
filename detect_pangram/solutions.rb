def panagram?(string)
  ('a'..'z').all? { |x| string.downcase.include? x }
end

def panagram?(string)
  string.downcase.scan(/[a-z]/).uniq.size == 26
end

def panagram?(s)
  ('A'..'Z').to_a - s.upcase.chars == []
end

def panagram?(string)
  ([*'a'..'z'] - string.downcase.chars).empty?
end
