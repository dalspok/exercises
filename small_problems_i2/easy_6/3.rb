=begin

P:
-input: int (number of digits), >= 2
-output: int (index of first fib number with these digits, 1-based)

E:

D:

A:
- using while loop: iterate /build fib sequence
- stop when current num = xx num of digits
- return index of this num in sequence

C: =========================
=end


def find_fibonacci_index_by_length(digits)
  fib_arr = [1,1]
  while fib_arr[-1].to_s.size < digits
    fib_arr << fib_arr[-1] + fib_arr[-2]
  end
  fib_arr.size
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847