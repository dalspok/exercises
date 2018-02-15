=begin

P:

E:

D:

A:

C: =========================
=end


def fibonacci_last(limit)
  fibonacci(limit) % 10
end

def fibonacci(limit)
  return 1 if limit <= 2
  first = 1
  second = 1
  (3..limit).each do |_|
    second, first = (first + second), second
  end
  second
end



p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4