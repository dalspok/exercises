=begin

P:
-input: int(upper limit inclusive)
-output: int(sum of all multiplies of 3 or 5 between 1..limit)

E:

D:

A:
- loop: generate numbers from 1 to limit
  - add to sum if divisible

- create array with items from 1 to limit
- select items divisible by 3 or 5
- sum

C: =========================
=end

# def multisum(limit)
#   sum = 0
#   (1..limit).each do |num|
#     sum += num if num % 3 == 0 || num % 5 == 0
#   end
#   sum
# end

def multisum(limit)
  (1..limit).to_a.select {|num| num % 3 == 0 || num % 5 == 0}.reduce(:+)
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168