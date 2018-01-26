=begin

P:
input str (words, spaces)
output str (words => 5: reverse)

? more spaces

E:


D:
arr of str (words)

A:
- transform str to arr of words
- iterate throught arr (map)
  - reverse those words with size >= 5
- join and return


C: =================================
=end

def reverse_words(str)
  arr = str.split.map do |item|
    item.size >= 5 ? item.reverse : item
  end
  arr.join(" ")
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
puts reverse_words("ahoj") # => "ahoj"