=begin

P:

E:

D:

A:

C: =========================
=end

def repeater(str)
  new_str = ""
  str.each_char {|char| new_str << char * 2}
  new_str
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''