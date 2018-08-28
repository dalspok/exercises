=begin

P:
-input: str
-output: str (doubled every char incl " ")
  - "" -> ""

E:

D:

A:
- iterate through letters using arr of chrs
- Map: Replace each letter with double that letter
- return str

C: =========================
=end

def repeater(str)
  str.chars.map{|chr| chr * 2}.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''