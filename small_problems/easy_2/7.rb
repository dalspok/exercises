# number = 1
# while number < 100
#   puts number if number.even?
#   number += 1
# end

# ---

arr = (1..99).to_a.select { |num| num.even?  }
puts arr


