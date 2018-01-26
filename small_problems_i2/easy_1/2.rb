# P:

# -method

# input:
# -int: + - 0

# output:
# -return true if abs() odd

# E:

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# D: -

# A:
# - .abs: obtain abs value
# - .odd?: return true if abs value odd, otherwise false

# alt:
# - if num < 0 transform to -num
# - compute num % 2
# - return true if 1, otherwise false

# C: ============================

# def is_odd?(num)
#   num.abs.odd?
# end


def is_odd?(num)
  num = -num if num < 0
  num % 2 == 1
end




puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true