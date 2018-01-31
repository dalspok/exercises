=begin

P:
-input: year (int)
-output: century + suffix (str)

-rules:
  - x century: (x-1)01-(X)00, e.g. 19th: 1801-1900

  - suffixes
    - 1st
    - 2nd
    - 3rd
    4th
    ..
    12th
    21st
    22nd

    => any number ending with 1 -> st 2 -> nd 3 -> rd except 11,12,13

? only AD

E:

D:
- suffix: using case or if-else

A:
- count century number from year
  - if year finish: 00 -> century = (year/100)
  - else: century = (year/100 + 1)
- find suffix for that number
  - if last
    - two digits 11, 12, 13: -> th
    - digit == 1 -> st....... (1,2,3)
  - else -> th
- concatenate str of century number + suffix

C: =========================
=end

def century(year)
  century_num = year/100 + 1
  century_num -= 1 if year % 100 == 0

  suffix = if century_num % 100 == 11 || century_num % 100 == 12 ||
              century_num % 100 == 13
              "th"
           elsif century_num % 10 == 1
             "st"
           elsif century_num % 10 == 2
             "nd"
           elsif century_num % 10 == 3
             "rd"
           else
             "th"
           end

  "#{century_num}#{suffix}"

end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'