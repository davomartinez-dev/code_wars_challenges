require 'pry'

def increment_if_match(char, hash)
  hash[char.to_sym] += 1 if hash.has_key?(char.to_sym)
end

def duplicate_count(_text)
  matchers = {
    a: 0,
    b: 0,
    c: 0,
    d: 0,
    e: 0,
    f: 0,
    g: 0,
    h: 0,
    i: 0,
    j: 0,
    k: 0,
    l: 0,
    m: 0,
    n: 0,
    o: 0,
    p: 0,
    q: 0,
    r: 0,
    s: 0,
    t: 0,
    u: 0,
    v: 0,
    w: 0,
    x: 0,
    y: 0,
    z: 0,
    '0': 0,
    '1': 0,
    '2': 0,
    '3': 0,
    '4': 0,
    '5': 0,
    '6': 0,
    '7': 0,
    '8': 0,
    '9': 0
  }

  _text.downcase.each_char { |x| increment_if_match(x, matchers) if matchers[x.to_sym] < 2 }
  matchers.select { |_k, v| v > 1 }.length
end

puts duplicate_count('abcddeaa')
