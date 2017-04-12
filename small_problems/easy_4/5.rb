=begin

input
  - int (upper limit)
output
  - int (sum)
rules
  - multiplies 3 or 5
  - between 1 .. num (including)
    - 1 not included in multiplies
  - sum
algorithm
  - for 1 .. num
    - check if num % 3 == 0
    - or if num % 5 == 0
    - true: add to sum

algorithm 2
  - method: return multiplies of n between 1..limit (argument: n, no 1)
  - call method for multiplies of 3, 5, return => arr
  - arr.unique values
  - sum

=end

# algorithm 1

# def multisum(upper_limit)
#   sum = 0
#   for num in 1..upper_limit
#     sum += num if num % 3 == 0 || num % 5 == 0
#   end
#   sum
# end

# def multisum(upper_limit)
#   arr = []
#   1.upto(upper_limit).each do |num|
#     arr << num if num % 3 == 0 || num % 5 == 0
#   end
#   arr.reduce(:+)
# end

# def multisum(upper_limit)
#   counter = 1
#   sum = 0
#   while counter <= upper_limit
#     sum += counter if counter % 3 == 0 || counter % 5 == 0
#     counter += 1
#   end
#   sum
# end

def multisum(upper_limit)
  (1..upper_limit).to_a.select { |num| num % 3 == 0 || num % 5 == 0  }.reduce(:+)
end

# algorithm 2

# def multisum(upper_limit)
#   (multiplies(3, upper_limit) + multiplies(5, upper_limit)).uniq.reduce(:+)
# end

# def multiplies(n, upper_limit)
#   arr = []
#   counter = n
#   until counter > upper_limit
#     arr << counter
#     counter += n
#   end
#   arr
# end

p multisum(3)


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
