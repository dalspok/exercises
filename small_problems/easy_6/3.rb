=begin

  input: int - num of digits of Fib Number
  output: int - position of first Fb Num with such num of digits
  border cases:
  rules:
    - FN:          1 1 2 3 5 8 13 21
    - map(length): 1 1 1 1 1 1 2 2 ...
    - index of map:0 1 2 3 4 5 6
  algorithm:
    - first two FN
    - loop
      - next FN
      - check length
      - if == arg, return

=end

def next_fibonacci(a, b)
  a + b
end

def find_fibonacci_index_by_length(sought_length)
  lower_last = 1
  higher_last = 1
  order = 2
  loop do
    next_num = next_fibonacci(lower_last, higher_last)
    lower_last = higher_last
    higher_last = next_num
    order += 1
    num_size = higher_last.to_s.size
    break order if sought_length <= higher_last.to_s.size
  end
end


p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847