# Input
#   - integer
# Output
#   - string: century + suffix
# Rules
#   - century
#     - starts 01
#     - ends 00
#     - number of century: num/100 + 1 except end double: 00 (%100==0)
#   - suffixes
#     - final numbers
#       - 0: th
#       - 1: st
#       - 2: nd
#       - 3: rd
#       - 4-9: th
#       - except 11,12,13 - th

# Tests
#   p century(2000) == '20th'
#   p century(1) == "1st"
#   p century(2001) == '21st'
#   p century(1965) == '20th'
#   p century(256) == '3rd'
#   p century(5) == '1st'
#   p century(10103) == '102nd'
#   p century(1052) == '11th'
#   p century(1127) == '12th'
#   p century(11201) == '113th'
#   p century(1000) == "11th"

# Data Structure
#   - integer for century number, setting suffix
#   - str for output
# Algorithms
#   - century number:
#     - if num % 100 == 0 => num / 100
#     - else num / 100 + 1
#   - if num / 100 == 11, 12, 13 => th
#                 == 1 => st
#                 == 2 => nd
#                 == 3 => rd
#               else th
#   - concat num.to_s + suffix

def century(num)
  century_num = (num % 100 == 0) ? (num / 100) : (num / 100 + 1)
  century_num.to_s + century_suffix(century_num)
end

def century_suffix(num)
  case num % 100
    when 11 then "th"
    when 12 then "th"
    when 13 then "th"
  else
    case num % 10
      when 1 then "st"
      when 2 then "nd"
      when 3 then "rd"
      else "th"
    end
  end
end


p century(2000) == '20th'
p century(1) == "1st"
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
p century(1000) == "10th"
