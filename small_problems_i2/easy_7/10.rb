=begin

P:

E:

D:

A:

C: =========================
=end

def penultimate str
  str.split.slice(-2)
end

p penultimate('last word')

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'