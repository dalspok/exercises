
=begin

P:
i: String
o: String (consonant - doubled)

consonant: char - (aeiou, digits, punct, whitespace)

E:

D:
consonant: range minus aeiou

A:
- iterate through String
- if consonant - replace chr by double
- return str

C: =========================
=end

CONSONANT = ("A".."Z").to_a - %w(A E I O U)
def double_consonants(str)
  new_str = ""
  str.each_char do |chr|
    new_str << chr
    new_str << chr if CONSONANT.include? chr.upcase
  end
  new_str
end

p double_consonants('String')

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""