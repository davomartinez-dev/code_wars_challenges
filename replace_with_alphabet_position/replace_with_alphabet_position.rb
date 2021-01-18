require 'pry'

def alphabet_position(text)
  alphabet = {
    a: 1,
    b: 2,
    c: 3,
    d: 4,
    e: 5,
    f: 6,
    g: 7,
    h: 8,
    i: 9,
    j: 10,
    k: 11,
    l: 12,
    m: 13,
    n: 14,
    o: 15,
    p: 16,
    q: 17,
    r: 18,
    s: 19,
    t: 20,
    u: 21,
    v: 22,
    w: 23,
    x: 24,
    y: 25,
    z: 26
  }
  result = []
  
  text.chars.each do | char |
    char = char.downcase
    result.push(alphabet[char.to_sym]) if alphabet.include?(char.to_sym)
  end

  result.join(' ')
end

puts alphabet_position("The sunset sets at twelve o' clock.")