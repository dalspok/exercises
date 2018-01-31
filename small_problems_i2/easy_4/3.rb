=begin

P:
-input: year(int) > 0
-output: boolean (true = leap year)

-rules:
  - LY: divisible / 4 except (/100 except /400)

E:

D:

A:
  - (/)? 400 || (4 and not 100)

C: =========================
=end

def leap_year?(year)
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
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true