=begin

P:
-input: str
- output: bool
ignore non-alphabetical, all UPPer –> true

E:

D:

A:

C: =========================
=end


def uppercase?(str)
  str.chars.all? { |char| char.upcase == char  }
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true