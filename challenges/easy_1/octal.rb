
# P:
# Input: str (octal)
# Output: int (decimal)

# invalit input -> 0 (octal)
# type checking? or expecting only str type?
# octal string: string with 0-7 chars

# E:

# D:

# A:
# Octal class
#   - default value or incorrect input (>=7, other chars) -> "0"
# method to_decimal:
#   - reverse string
#   - convert to arr of individual nums
#   - iterate with index and multiply by 8 to the power of index
#   - sum the results

# C: =========================

class Octal
  BASE = 8

  attr_reader :value
  def initialize(value="0")
    @value = octal?(value) ? value : "0"
  end

  def octal?(value)
    !value.match(/[^0-7]/)
  end

  def to_decimal
    reversed_nums = value.reverse.chars.map(&:to_i)
    reversed_nums.map.with_index {|num, index| num*(BASE**index)}.sum
  end
end