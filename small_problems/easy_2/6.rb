# (1..99).each { |num| puts num if num.odd?  }

# ---

# 1.upto(99) { |num| puts num if num % 2 != 0  }

# ---

# for i in 1..99
#   puts i if i.odd?
# end

# ---

# counter = 1
# while counter < 100
#   puts counter if counter.odd?
#   counter += 1
# end

# ---

counter = 1
loop do
  puts counter if counter % 2 == 1
  counter += 1
  break if counter > 99
end