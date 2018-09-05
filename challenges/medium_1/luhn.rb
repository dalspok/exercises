
# 1. Check if valid
# 2. return checksum
# 3. add valid check digit -> valid, original

# Methods:
# #addends -> arr of digits according the Luhn formula
#   - reverse map array of digits, with index:
#   - odd index -> double
# #checksum -> checksum number (sum addends)
# #valid? (checksum ends in 0)
# #class::create (original) -> new, valid number
#   - compute checksum of the number
#   - 10-last digit from this checksum -> valid last number

class Luhn
  def initialize(number)
    @number = number
  end

  def self.create(number)
    number_long = number * 10
    checksum = Luhn.new(number_long).checksum
    last_digit = (10 - checksum) % 10
    number_long + last_digit
  end

  def addends
    numbers = @number.to_s.chars.map(&:to_i)
    reversed_addends = numbers.reverse.map.with_index do |digit, index|
      if index.odd?
        double = digit * 2
        double > 10 ? double - 9 : double
      else
        digit
      end
    end
    reversed_addends.reverse
  end

  def checksum
    addends.sum
  end

  def valid?
    checksum % 10 == 0
  end
end
