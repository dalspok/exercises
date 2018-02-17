=begin

P:

E:

D:

A:

C: =========================
=end

def letter_percentages(str)
  all_count = str.size.to_f
  up_count = str.count "A-Z"
  down_count = str.count "a-z"
  other_count = str.size - (up_count + down_count)

  {lowercase: down_count/all_count*100, uppercase: up_count/all_count*100 , neither: other_count/all_count*100}
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }