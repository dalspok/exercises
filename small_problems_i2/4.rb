=begin

P:
-input: str
-output: str (swaping first and last letter)

E:

D:

A:
- split str -> arr
- map arr (swap first and last char)
- join

C: =========================
=end

def swap(str)
  str.split.each {|word| word[0], word[-1] = word[-1], word[0]}.join(" ")

end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'