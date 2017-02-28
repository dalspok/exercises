def is_odd?(number)
  number % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false


# ---FE---

def is_odd1?(number)
  number.abs % 2 == 1
end

puts is_odd1?(2)    # => false
puts is_odd1?(5)    # => true
puts is_odd1?(-17)  # => true
puts is_odd1?(-8)   # => false

# ---FE---

def is_odd2?(number)
  number.remainder(2) != 0
end

puts is_odd2?(2)    # => false
puts is_odd2?(5)    # => true
puts is_odd2?(-17)  # => true
puts is_odd2?(-8)   # => false