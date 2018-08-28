
# P:
# - input:
#   - class method - final number (sum of mult 3,5 < final)
#   - instance method - + which multiples ([nums], final)

#   default: 3,5
#   ? no arg as final -> Arg Err

# E:

# D:
# - class SumOfMultiples
#   - class method ::to (default values, arg Error)
#     - only final number
#   - instance method #to (default values, arg ERror)
#     + which multiples ([nums], final)
#   - method

# A:
# - for each num
#   - create array of multiples and reduce it (-> arr_of_sums)
#     - iterating through (num...final).step(num)
# - sum arr_of_sums

# C: =========================

class SumOfMultiples
  attr_reader :numbers
  DEFAULT_NUMBERS = [3,5]

  def self.to(limit)
    SumOfMultiples.new.to(limit)
  end

  def initialize(*numbers)
    @numbers = numbers.empty? ? DEFAULT_NUMBERS : numbers
  end

  def to(final)
    multiples = numbers.map do |number|
     (number...final).step(number).to_a
    end
    multiples.flatten.uniq.sum
  end

end
