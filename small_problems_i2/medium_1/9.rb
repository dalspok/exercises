=begin

P:

E:

D:

A:

C: =========================
=end

def fibonacci(limit)
  return 1 if limit <= 2
  first = 1
  second = 1
  (3..limit).each do |_|
    second, first = (first + second), second
  end
  second
end


p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501