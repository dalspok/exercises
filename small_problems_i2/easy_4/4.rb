=begin

P:

E:

D:

A:

C: =========================
=end


def leap_year?(year)
  year >= 1752 ? gregorian_leap_year?(year) : julian_leap_year?(year)
end

def julian_leap_year?(year)
  year % 4 == 0
end

def gregorian_leap_year?(year)
  year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
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