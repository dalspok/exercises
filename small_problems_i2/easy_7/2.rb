=begin

P:
input: str
output: hsh

E:

D:

A:
- create hsh with default 0
- iterate through str
  + check case (match)
  + increment hsh
- return hsh

C: =========================
=end

def letter_case_count(str)
  hsh = {uppercase: 0, lowercase: 0, neither:0 }
  str.each_char do |char|
    if char.match /[A-Z]/
      hsh[:uppercase] += 1
    elsif char.match /[a-z]/
      hsh[:lowercase] += 1
    else
      hsh[:neither] += 1
    end
  end
  hsh
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }