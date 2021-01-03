require 'pry'

def mark_in_abc(char, hash)
  hash[char.to_sym] = true if hash.has_key?(char.to_sym)
end

def panagram?(_string)
  abc = {
    a: false,
    b: false,
    c: false,
    d: false,
    e: false,
    f: false,
    g: false,
    h: false,
    i: false,
    j: false,
    k: false,
    l: false,
    m: false,
    n: false,
    o: false,
    p: false,
    q: false,
    r: false,
    s: false,
    t: false,
    u: false,
    v: false,
    w: false,
    x: false,
    y: false,
    z: false
  }

  _string.downcase.each_char { |x| mark_in_abc(x, abc) unless abc[x.to_sym] != false }
  !abc.value?(false) ? true : false
end