
ALPHAS = ("A".."Z").to_a

def uppercase?(str)
  striped = str.delete("^a-zA-Z")
  str.chars.all? {|chr| chr == chr.upcase}
end


p uppercase?('T')

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true