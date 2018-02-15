=begin

P:
-int: n (odd, n - num of rows, width of middle row)
-output: printout

E:

D:

A:
- print picture with n rows
  - each (x) row: spaces asterisk spaces
    - num of asterisks: 1-3...n...1
      increasing:start with num 1, add 2 until n
      max: print n asterisks
      decreasing: start with n-2, till 1
    - num of spaces: (n - num of asterisks)/2

C: =========================
=end

def diamond(n)
  1.step(n, 2) { |num| print_asterisks(n, num)  }
  (n-2).step(1, -2) { |num|  print_asterisks(n, num)  }
end

def print_asterisks(size, num)
  num_of_spaces = (size - num)/2
  puts " " * num_of_spaces + "*" * num + " " * num_of_spaces
end

diamond 1
diamond 3
diamond 9