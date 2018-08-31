# conversion:
# - take (from left) next digit and consider it as whole number
# (2193 -> 2000) = omit all right digits (take as 0)
#   (ignore last 0 - as 1 digit number)
# - convert to roman numeral
# - join them together

# logic:
# - first num: structure
# - num_of_zeros: fill: low middle top

# - 9 -> structure low top
# - 900 -> 00 fill low = c top = m –> cm


# #to_roman
# - for each digit (from left to right)
#   - (if last digit + zero -> omit)
#   - remove (replace) right digits (if any) with zeros
#
#   - convert to roman numeral (using hash table)
#   - save to string
# - join together

class Integer

  ROMANS_DIGIT_STRUCTURE = {
    0 => "",
    1 => "1",
    2 => "11",
    3 => "111",
    4 => "15",
    5 => "5",
    6 => "51",
    7 => "511",
    8 => "5111",
    9 => "10", # 0 means "10", next higher order
  }

  ROMANS_TENS_STRUCTURE = {
    0 => ["I", "V", "X"],
    1 => ["X", "L", "C"],
    2 => ["C", "D", "M"],
    3 => ["M", "?", "?"],
  }

  def to_roman
    str_num = self.to_s
    length = str_num.size
    romans = ""
    str_num.chars.each_with_index do |str_digit, idx|
      num_of_zeros = (length - idx) - 1
      romans << convert(str_digit.to_i, num_of_zeros)
    end
    romans
  end

  def convert(digit, num_of_zeros)
    low, middle, top = ROMANS_TENS_STRUCTURE[num_of_zeros]
    matrix = ROMANS_DIGIT_STRUCTURE[digit]
    matrix.gsub("1", low).gsub("5", middle).gsub("0", top)
  end
end




