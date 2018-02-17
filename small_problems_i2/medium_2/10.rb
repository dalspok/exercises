=begin

P:

E:

D:

A:

C: =========================
=end


def sum_square_difference(limit)
  sum_of_powers = (1..limit).map {|i| i ** 2}.reduce(:+)
  power_of_sums = (1..limit).reduce(:+)**2
  power_of_sums - sum_of_powers
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150