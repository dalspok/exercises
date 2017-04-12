# def leap_year_gregorian?(year)
#   return true if year % 400 == 0
#   return false if year % 100 == 0
#   return true if year % 4 == 0
#   return false
# end

# def leap_year_julian?(year)
#   year % 4 == 0
# end

# def leap_year?(year)
#   (year < 1752) ? leap_year_julian?(year) : leap_year_gregorian?(year)
# end

def leap_year?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0 && year >  1752
  return true if year % 4 == 0
  return false
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true