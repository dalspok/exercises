=begin

P:
-input: arr of ints
- output: multiplicative avg (float), rounded to 3 decimals
E:

D:

A:

C: =========================
=end

def show_multiplicative_average(arr)
  puts (arr.reduce(:*) / arr.size.to_f).round(3)
end


show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667